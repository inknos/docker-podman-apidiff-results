#!/bin/bash
docker_versions=(
	1.46
	1.45
	1.44
	1.43
	1.42
	1.41
	1.40
)

mkdir specs
mkdir results

wget -O "specs/podman-latest.yaml" "https://storage.googleapis.com/libpod-master-releases/swagger-latest.yaml"

for version in "${docker_versions[@]}"; do
	url="https://docs.docker.com/reference/engine/v${version}.yaml"
	wget -O "specs/docker-v${version}.yaml" "$url"
done

# Compare Podman specs with Docker specs
for version in "${docker_versions[@]}"; do
    for command in breaking changelog diff; do

	    output="docker-v$version-podman-latest-$command"
        ~/go/bin/oasdiff $command \
            "specs/docker-v$version.yaml" "specs/podman-latest.yaml" \
            -f html > "results/html/$output.html"
        echo "Done with $output"
    done
done

# Compare Docker specs with Docker specs
for version in ${docker_versions[@]}; do
    for other_version in ${docker_versions[@]}; do
        # continue loop if same version and just touch the file
        if [ "$version" = "$other_version" ]; then
            touch "results/markdown/$output.md"
            touch "results/html/$output.html"
            continue
        fi
        output="docker-v$version-docker-v$other_version"
        ~/go/bin/oasdiff diff \
            "specs/docker-v$version.yaml" "specs/docker-v$other_version.yaml" \
            -f html > "results/html/$output.html"
        echo "Done with $output"
        done
    done

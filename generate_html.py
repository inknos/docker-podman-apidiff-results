import jinja2

docker_versions = [
    "1.46",
    "1.45",
    "1.44",
    "1.43",
    "1.42",
    "1.41",
    "1.40"
]

template_loader = jinja2.FileSystemLoader(".")
template_env = jinja2.Environment(loader=template_loader)
template = template_env.get_template("templates/index.j2")

output = template.render(docker_versions=docker_versions)

with open("index.html", "w") as f:
    f.write(output)

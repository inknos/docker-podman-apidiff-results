#### What's Changed
---

##### `GET` /containers/{id}/changes


###### Return Type:

Changed response : **200 OK**
> The list of changes


* Changed content type : `application/json`

    Changed items (object):
        > change item in response to ContainerChanges operation


    * Changed property `Path` (string)
        > Path to file that has changed


    * Changed property `Kind` (integer)
        > Kind of change


        Removed enum values:

        * `0`
        * `1`
        * `2`
##### `GET` /images/json


###### Parameters:

Changed: `filters` in `query`
> A JSON encoded value of the filters (a `map[string][]string`) to
> process on the images list.
>
> Available filters:
>
> - `before`=(`<image-name>[:<tag>]`,  `<image id>` or `<image@digest>`)
> - `dangling=true`
> - `label=key` or `label="key=value"` of an image label
> - `reference`=(`<image-name>[:<tag>]`)
> - `since`=(`<image-name>[:<tag>]`,  `<image id>` or `<image@digest>`)


###### Return Type:

Changed response : **200 OK**
> Summary image data for the images matching the query


* Changed content type : `application/json`

    Changed items (object):

    New required properties:
    - `VirtualSize`

    * Changed property `VirtualSize` (integer)
        > Total size of the image including all layers it is composed of.
        >
        > In versions of Docker before v1.10, this field was calculated from
        > the image itself and all of its parent images. Docker v1.10 and up
        > store images self-contained, and no longer use a parent-chain, making
        > this field an equivalent of the Size field.
        >
        > This field is kept for backward compatibility, but may be removed in
        > a future version of the API.


##### `POST` /build/prune


###### Parameters:

Changed: `filters` in `query`
> A JSON encoded value of the filters (a `map[string][]string`) to
> process on the list of build cache objects.
>
> Available filters:
>
> - `until=<duration>`: duration relative to daemon's time, during which build cache was not used, in Go's duration format (e.g., '24h')
> - `id=<id>`
> - `parent=<id>`
> - `type=<string>`
> - `description=<string>`
> - `inuse`
> - `shared`
> - `private`


##### `POST` /images/create


##### `POST` /images/{name}/push


###### Parameters:

Deleted: `platform` in `query`
> Select a platform-specific manifest to be pushed. OCI platform (JSON encoded)


##### `GET` /images/search


###### Parameters:

Changed: `filters` in `query`
> A JSON encoded value of the filters (a `map[string][]string`) to process on the images list. Available filters:
>
> - `is-automated=(true|false)`
> - `is-official=(true|false)`
> - `stars=<number>` Matches images that has at least 'number' stars.


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `is_automated` (boolean)

##### `POST` /commit


###### Request:

Changed content type : `application/json`

* Changed property `MacAddress` (string)
    > MAC address of the container.


* Changed property `Healthcheck` (object)
    > A test to perform to check that the container is healthy.


    * Deleted property `StartInterval` (integer)
        > The time to wait between checks in nanoseconds during the start period.
        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


##### `GET` /events


##### `POST` /networks/create


###### Request:

Changed content type : `application/json`

* Added property `CheckDuplicate` (boolean)
    > Check for networks with duplicate names. Since Network is
    > primarily keyed based on a random ID and not on the name, and
    > network name is strictly a user-friendly alias to the network
    > which is uniquely identified using ID, there is no guaranteed
    > way to check for duplicates. CheckDuplicate is there to provide
    > a best effort checking of any networks which has the same name
    > but it is not guaranteed to catch all name collisions.


###### Return Type:

Changed response : **201 Created**
> No error


* Changed content type : `application/json`

    New optional properties:
    - `Id`
    - `Warning`

    * Changed property `Warning` (string)

Changed response : **403 Forbidden**
> operation not supported for pre-defined networks

##### `POST` /networks/{id}/connect


###### Request:

Changed content type : `application/json`

* Changed property `EndpointConfig` (object)
    > Configuration for a network endpoint.


    * Deleted property `DNSNames` (array)
        > List of all DNS names an endpoint has on a specific network. This
        > list is based on the container name, network aliases, container short
        > ID, and hostname.
        >
        > These DNS names are non-fully qualified but can contain several dots.
        > You can get fully qualified DNS names by appending `.<network-name>`.
        > For instance, if container name is `my.ctr` and the network is named
        > `testnet`, `DNSNames` will contain `my.ctr` and the FQDN will be
        > `my.ctr.testnet`.


    * Changed property `MacAddress` (string)
        > MAC address for the endpoint on this network.


###### Return Type:

Deleted response : **400 Bad Request**
> bad parameter

Changed response : **403 Forbidden**
> Operation not supported for swarm scoped networks

##### `GET` /containers/json


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `HostConfig` (object)

        * Deleted property `Annotations` (object)
            > Arbitrary key-value metadata attached to container


    * Changed property `NetworkSettings` (object)
        > A summary of the container's network settings


        * Changed property `Networks` (object)

##### `POST` /containers/create


###### Request:

Changed content type : `application/json`

* Changed property `MacAddress` (string)
    > MAC address of the container.


* Changed property `Healthcheck` (object)
    > A test to perform to check that the container is healthy.


    * Deleted property `StartInterval` (integer)
        > The time to wait between checks in nanoseconds during the start period.
        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


* Changed property `HostConfig` (object)
    > A container's resources (cgroups config, ulimits, etc)


    * Deleted property `Annotations` (object)
        > Arbitrary non-identifying metadata attached to container and
        > provided to the runtime when the container is started.


    * Changed property `Mounts` (array)
        > Specification for mounts to be added to the container.


        Changed items (object):

        * Changed property `BindOptions` (object)
            > Optional configuration for the `bind` type.


            * Deleted property `ReadOnlyNonRecursive` (boolean)
                > Make the mount non-recursively read-only, but still leave the mount recursive
                > (unless NonRecursive is set to `true` in conjunction).
                >
                > Addded in v1.44, before that version all read-only mounts were
                > non-recursive by default. To match the previous behaviour this
                > will default to `true` for clients on versions prior to v1.44.


            * Deleted property `ReadOnlyForceRecursive` (boolean)
                > Raise an error if the mount cannot be made recursively read-only.


        * Changed property `VolumeOptions` (object)
            > Optional configuration for the `volume` type.


            * Deleted property `Subpath` (string)
                > Source path inside the volume. Must be relative without any back traversals.


        * Changed property `TmpfsOptions` (object)
            > Optional configuration for the `tmpfs` type.


            * Deleted property `Options` (array)
                > The options to be passed to the tmpfs mount. An array of arrays.
                > Flag options should be provided as 1-length arrays. Other types
                > should be provided as as 2-length arrays, where the first item is
                > the key and the second the value.


* Changed property `NetworkingConfig` (object)
    > NetworkingConfig represents the container's networking configuration for
    > each of its interfaces.
    > It is used for the networking configs specified in the `docker create`
    > and `docker network connect` commands.


    * Changed property `EndpointsConfig` (object)
        > A mapping of network name to endpoint configuration for that network.


Changed content type : `application/octet-stream`

* Changed property `MacAddress` (string)
    > MAC address of the container.


* Changed property `Healthcheck` (object)
    > A test to perform to check that the container is healthy.


    * Deleted property `StartInterval` (integer)
        > The time to wait between checks in nanoseconds during the start period.
        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


* Changed property `HostConfig` (object)
    > A container's resources (cgroups config, ulimits, etc)


    * Deleted property `Annotations` (object)
        > Arbitrary non-identifying metadata attached to container and
        > provided to the runtime when the container is started.


    * Changed property `Mounts` (array)
        > Specification for mounts to be added to the container.


        Changed items (object):

        * Changed property `BindOptions` (object)
            > Optional configuration for the `bind` type.


            * Deleted property `ReadOnlyNonRecursive` (boolean)
                > Make the mount non-recursively read-only, but still leave the mount recursive
                > (unless NonRecursive is set to `true` in conjunction).
                >
                > Addded in v1.44, before that version all read-only mounts were
                > non-recursive by default. To match the previous behaviour this
                > will default to `true` for clients on versions prior to v1.44.


            * Deleted property `ReadOnlyForceRecursive` (boolean)
                > Raise an error if the mount cannot be made recursively read-only.


        * Changed property `VolumeOptions` (object)
            > Optional configuration for the `volume` type.


            * Deleted property `Subpath` (string)
                > Source path inside the volume. Must be relative without any back traversals.


        * Changed property `TmpfsOptions` (object)
            > Optional configuration for the `tmpfs` type.


            * Deleted property `Options` (array)
                > The options to be passed to the tmpfs mount. An array of arrays.
                > Flag options should be provided as 1-length arrays. Other types
                > should be provided as as 2-length arrays, where the first item is
                > the key and the second the value.


* Changed property `NetworkingConfig` (object)
    > NetworkingConfig represents the container's networking configuration for
    > each of its interfaces.
    > It is used for the networking configs specified in the `docker create`
    > and `docker network connect` commands.


    * Changed property `EndpointsConfig` (object)
        > A mapping of network name to endpoint configuration for that network.


##### `GET` /containers/{id}/json


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Changed property `Config` (object)
        > Configuration for a container that is portable between hosts.
        >
        > When used as `ContainerConfig` field in an image, `ContainerConfig` is an
        > optional field containing the configuration of the container that was last
        > committed when creating the image.
        >
        > Previous versions of Docker builder used this field to store build cache,
        > and it is not in active use anymore.


        * Changed property `MacAddress` (string)
            > MAC address of the container.


        * Changed property `Healthcheck` (object)
            > A test to perform to check that the container is healthy.


            * Deleted property `StartInterval` (integer)
                > The time to wait between checks in nanoseconds during the start period.
                > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


    * Changed property `State` (object)
        > ContainerState stores container's running state. It's part of ContainerJSONBase
        > and will be returned by the "inspect" command.


        * Changed property `OOMKilled` (boolean)
            > Whether this container has been killed because it ran out of memory.


    * Changed property `HostConfig` (object)
        > A container's resources (cgroups config, ulimits, etc)


        * Deleted property `Annotations` (object)
            > Arbitrary non-identifying metadata attached to container and
            > provided to the runtime when the container is started.


        * Changed property `Mounts` (array)
            > Specification for mounts to be added to the container.


            Changed items (object):

            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Deleted property `ReadOnlyNonRecursive` (boolean)
                    > Make the mount non-recursively read-only, but still leave the mount recursive
                    > (unless NonRecursive is set to `true` in conjunction).
                    >
                    > Addded in v1.44, before that version all read-only mounts were
                    > non-recursive by default. To match the previous behaviour this
                    > will default to `true` for clients on versions prior to v1.44.


                * Deleted property `ReadOnlyForceRecursive` (boolean)
                    > Raise an error if the mount cannot be made recursively read-only.


            * Changed property `VolumeOptions` (object)
                > Optional configuration for the `volume` type.


                * Deleted property `Subpath` (string)
                    > Source path inside the volume. Must be relative without any back traversals.


            * Changed property `TmpfsOptions` (object)
                > Optional configuration for the `tmpfs` type.


                * Deleted property `Options` (array)
                    > The options to be passed to the tmpfs mount. An array of arrays.
                    > Flag options should be provided as 1-length arrays. Other types
                    > should be provided as as 2-length arrays, where the first item is
                    > the key and the second the value.


    * Changed property `NetworkSettings` (object)
        > NetworkSettings exposes the network settings in the API


        * Changed property `Bridge` (string)
            > Name of the network's bridge (for example, `docker0`).


        * Changed property `HairpinMode` (boolean)
            > Indicates if hairpin NAT should be enabled on the virtual interface.


        * Changed property `LinkLocalIPv6Address` (string)
            > IPv6 unicast address using the link-local prefix.


        * Changed property `LinkLocalIPv6PrefixLen` (integer)
            > Prefix length of the IPv6 unicast address.


        * Changed property `SandboxKey` (string)
            > SandboxKey identifies the sandbox


        * Changed property `SecondaryIPv6Addresses` (array)

        * Changed property `SecondaryIPAddresses` (array)

        * Changed property `Networks` (object)
            > Information about all networks that the container is connected to.


##### `GET` /images/{name}/json


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    * Added property `Container` (string)
        > The ID of the container that was used to create the image.
        >
        > Depending on how the image was created, this field may be empty.


    * Added property `ContainerConfig` (object)
        > Configuration for a container that is portable between hosts.
        >
        > When used as `ContainerConfig` field in an image, `ContainerConfig` is an
        > optional field containing the configuration of the container that was last
        > committed when creating the image.
        >
        > Previous versions of Docker builder used this field to store build cache,
        > and it is not in active use anymore.


        * Property `Hostname` (string)
            > The hostname to use for the container, as a valid RFC 1123 hostname.


        * Property `Domainname` (string)
            > The domain name to use for the container.


        * Property `User` (string)
            > The user that commands are run as inside the container.


        * Property `AttachStdin` (boolean)
            > Whether to attach to `stdin`.


        * Property `AttachStdout` (boolean)
            > Whether to attach to `stdout`.


        * Property `AttachStderr` (boolean)
            > Whether to attach to `stderr`.


        * Property `ExposedPorts` (object)
            > An object mapping ports to an empty object in the form:
            >
            > `{"<port>/<tcp|udp|sctp>": {}}`


        * Property `Tty` (boolean)
            > Attach standard streams to a TTY, including `stdin` if it is not closed.


        * Property `OpenStdin` (boolean)
            > Open `stdin`


        * Property `StdinOnce` (boolean)
            > Close `stdin` after one attached client disconnects


        * Property `Env` (array)
            > A list of environment variables to set inside the container in the
            > form `["VAR=value", ...]`. A variable without `=` is removed from the
            > environment, rather than to have an empty value.


            Items (string):

        * Property `Cmd` (array)
            > Command to run specified as a string or an array of strings.


            Items (string):

        * Property `Healthcheck` (object)
            > A test to perform to check that the container is healthy.


            * Property `Test` (array)
                > The test to perform. Possible values are:
                >
                > - `[]` inherit healthcheck from image or parent image
                > - `["NONE"]` disable healthcheck
                > - `["CMD", args...]` exec arguments directly
                > - `["CMD-SHELL", command]` run command with system's default shell


                Items (string):

            * Property `Interval` (integer)
                > The time to wait between checks in nanoseconds. It should be 0 or at
                > least 1000000 (1 ms). 0 means inherit.


            * Property `Timeout` (integer)
                > The time to wait before considering the check to have hung. It should
                > be 0 or at least 1000000 (1 ms). 0 means inherit.


            * Property `Retries` (integer)
                > The number of consecutive failures needed to consider a container as
                > unhealthy. 0 means inherit.


            * Property `StartPeriod` (integer)
                > Start period for the container to initialize before starting
                > health-retries countdown in nanoseconds. It should be 0 or at least
                > 1000000 (1 ms). 0 means inherit.


        * Property `ArgsEscaped` (boolean)
            > Command is already escaped (Windows only)


        * Property `Image` (string)
            > The name (or reference) of the image to use when creating the container,
            > or which was used when the container was created.


        * Property `Volumes` (object)
            > An object mapping mount point paths inside the container to empty
            > objects.


        * Property `WorkingDir` (string)
            > The working directory for commands to run in.


        * Property `Entrypoint` (array)
            > The entry point for the container as a string or an array of strings.
            >
            > If the array consists of exactly one empty string (`[""]`) then the
            > entry point is reset to system default (i.e., the entry point used by
            > docker when there is no `ENTRYPOINT` instruction in the `Dockerfile`).


            Items (string):

        * Property `NetworkDisabled` (boolean)
            > Disable networking for the container.


        * Property `MacAddress` (string)
            > MAC address of the container.


        * Property `OnBuild` (array)
            > `ONBUILD` metadata that were defined in the image's `Dockerfile`.


            Items (string):

        * Property `Labels` (object)
            > User-defined key/value metadata.


        * Property `StopSignal` (string)
            > Signal to stop a container as a string or unsigned integer.


        * Property `StopTimeout` (integer)
            > Timeout to stop a container in seconds.


        * Property `Shell` (array)
            > Shell for when `RUN`, `CMD`, and `ENTRYPOINT` uses a shell.


            Items (string):

    * Changed property `Created` (string -> string)
        > Date and time at which the image was created, formatted in
        > [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.


    * Changed property `VirtualSize` (integer)
        > Total size of the image including all layers it is composed of.
        >
        > In versions of Docker before v1.10, this field was calculated from
        > the image itself and all of its parent images. Docker v1.10 and up
        > store images self-contained, and no longer use a parent-chain, making
        > this field an equivalent of the Size field.
        >
        > This field is kept for backward compatibility, but may be removed in
        > a future version of the API.


    * Changed property `Config` (object)
        > Configuration of the image. These fields are used as defaults
        > when starting a container from the image.


        * Changed property `Hostname` (string)
            > The hostname to use for the container, as a valid RFC 1123 hostname.
            >
            > <p><br /></p>
            >
            > > **Note**: this field is always empty and must not be used.


        * Changed property `Domainname` (string)
            > The domain name to use for the container.
            >
            > <p><br /></p>
            >
            > > **Note**: this field is always empty and must not be used.


        * Changed property `AttachStdin` (boolean)
            > Whether to attach to `stdin`.
            >
            > <p><br /></p>
            >
            > > **Note**: this field is always false and must not be used.


        * Changed property `AttachStdout` (boolean)
            > Whether to attach to `stdout`.
            >
            > <p><br /></p>
            >
            > > **Note**: this field is always false and must not be used.


        * Changed property `AttachStderr` (boolean)
            > Whether to attach to `stderr`.
            >
            > <p><br /></p>
            >
            > > **Note**: this field is always false and must not be used.


        * Changed property `Tty` (boolean)
            > Attach standard streams to a TTY, including `stdin` if it is not closed.
            >
            > <p><br /></p>
            >
            > > **Note**: this field is always false and must not be used.


        * Changed property `OpenStdin` (boolean)
            > Open `stdin`
            >
            > <p><br /></p>
            >
            > > **Note**: this field is always false and must not be used.


        * Changed property `StdinOnce` (boolean)
            > Close `stdin` after one attached client disconnects.
            >
            > <p><br /></p>
            >
            > > **Note**: this field is always false and must not be used.


        * Changed property `Image` (string)
            > The name (or reference) of the image to use when creating the container,
            > or which was used when the container was created.
            >
            > <p><br /></p>
            >
            > > **Note**: this field is always empty and must not be used.


        * Changed property `NetworkDisabled` (boolean)
            > Disable networking for the container.
            >
            > <p><br /></p>
            >
            > > **Note**: this field is always omitted and must not be used.


        * Changed property `MacAddress` (string)
            > MAC address of the container.
            >
            > <p><br /></p>
            >
            > > **Note**: this field is always omitted and must not be used.


        * Changed property `StopTimeout` (integer)
            > Timeout to stop a container in seconds.
            >
            > <p><br /></p>
            >
            > > **Note**: this field is always omitted and must not be used.


        * Changed property `Healthcheck` (object)
            > A test to perform to check that the container is healthy.


            * Deleted property `StartInterval` (integer)
                > The time to wait between checks in nanoseconds during the start period.
                > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


##### `GET` /system/df


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Changed property `Images` (array)

        Changed items (object):

        New required properties:
        - `VirtualSize`

        * Changed property `VirtualSize` (integer)
            > Total size of the image including all layers it is composed of.
            >
            > In versions of Docker before v1.10, this field was calculated from
            > the image itself and all of its parent images. Docker v1.10 and up
            > store images self-contained, and no longer use a parent-chain, making
            > this field an equivalent of the Size field.
            >
            > This field is kept for backward compatibility, but may be removed in
            > a future version of the API.


    * Changed property `Containers` (array)

        Changed items (object):

        * Changed property `HostConfig` (object)

            * Deleted property `Annotations` (object)
                > Arbitrary key-value metadata attached to container


        * Changed property `NetworkSettings` (object)
            > A summary of the container's network settings


            * Changed property `Networks` (object)

* Changed content type : `text/plain`

    * Changed property `Images` (array)

        Changed items (object):

        New required properties:
        - `VirtualSize`

        * Changed property `VirtualSize` (integer)
            > Total size of the image including all layers it is composed of.
            >
            > In versions of Docker before v1.10, this field was calculated from
            > the image itself and all of its parent images. Docker v1.10 and up
            > store images self-contained, and no longer use a parent-chain, making
            > this field an equivalent of the Size field.
            >
            > This field is kept for backward compatibility, but may be removed in
            > a future version of the API.


    * Changed property `Containers` (array)

        Changed items (object):

        * Changed property `HostConfig` (object)

            * Deleted property `Annotations` (object)
                > Arbitrary key-value metadata attached to container


        * Changed property `NetworkSettings` (object)
            > A summary of the container's network settings


            * Changed property `Networks` (object)

##### `POST` /services/create


###### Request:

Changed content type : `application/json`

* Changed property `Networks` (array)
    > Specifies which networks the service should attach to.


* Changed property `TaskTemplate` (object)
    > User modifiable task configuration.


    * Changed property `ContainerSpec` (object)
        > Container spec for the service.
        >
        > <p><br /></p>
        >
        > > **Note**: ContainerSpec, NetworkAttachmentSpec, and PluginSpec are
        > > mutually exclusive. PluginSpec is only used when the Runtime field
        > > is set to `plugin`. NetworkAttachmentSpec is used when the Runtime
        > > field is set to `attachment`.


        * Deleted property `OomScoreAdj` (integer)
            > An integer value containing the score given to the container in
            > order to tune OOM killer preferences.


        * Changed property `Privileges` (object)
            > Security options for the container


            * Deleted property `Seccomp` (object)
                > Options for configuring seccomp on the container


            * Deleted property `AppArmor` (object)
                > Options for configuring AppArmor on the container


            * Deleted property `NoNewPrivileges` (boolean)
                > Configuration of the no_new_privs bit in the container


        * Changed property `Mounts` (array)
            > Specification for mounts to be added to containers created as part
            > of the service.


            Changed items (object):

            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Deleted property `ReadOnlyNonRecursive` (boolean)
                    > Make the mount non-recursively read-only, but still leave the mount recursive
                    > (unless NonRecursive is set to `true` in conjunction).
                    >
                    > Addded in v1.44, before that version all read-only mounts were
                    > non-recursive by default. To match the previous behaviour this
                    > will default to `true` for clients on versions prior to v1.44.


                * Deleted property `ReadOnlyForceRecursive` (boolean)
                    > Raise an error if the mount cannot be made recursively read-only.


            * Changed property `VolumeOptions` (object)
                > Optional configuration for the `volume` type.


                * Deleted property `Subpath` (string)
                    > Source path inside the volume. Must be relative without any back traversals.


            * Changed property `TmpfsOptions` (object)
                > Optional configuration for the `tmpfs` type.


                * Deleted property `Options` (array)
                    > The options to be passed to the tmpfs mount. An array of arrays.
                    > Flag options should be provided as 1-length arrays. Other types
                    > should be provided as as 2-length arrays, where the first item is
                    > the key and the second the value.


        * Changed property `HealthCheck` (object)
            > A test to perform to check that the container is healthy.


            * Deleted property `StartInterval` (integer)
                > The time to wait between checks in nanoseconds during the start period.
                > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


    * Changed property `Placement` (object)

        * Changed property `Constraints` (array)
            > An array of constraint expressions to limit the set of nodes where
            > a task can be scheduled. Constraint expressions can either use a
            > _match_ (`==`) or _exclude_ (`!=`) rule. Multiple constraints find
            > nodes that satisfy every expression (AND match). Constraints can
            > match node or Docker Engine labels as follows:
            >
            > node attribute       | matches                        | example
            > ---------------------|--------------------------------|-----------------------------------------------
            > `node.id`            | Node ID                        | `node.id==2ivku8v2gvtg4`
            > `node.hostname`      | Node hostname                  | `node.hostname!=node-2`
            > `node.role`          | Node role (`manager`/`worker`) | `node.role==manager`
            > `node.platform.os`   | Node operating system          | `node.platform.os==windows`
            > `node.platform.arch` | Node architecture              | `node.platform.arch==x86_64`
            > `node.labels`        | User-defined node labels       | `node.labels.security==high`
            > `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-14.04`
            >
            > `engine.labels` apply to Docker Engine labels like operating system,
            > drivers, etc. Swarm administrators add `node.labels` for operational
            > purposes by using the [`node update endpoint`](#operation/NodeUpdate).


###### Return Type:

Changed response : **201 Created**
> no error


* Changed content type : `application/json`

    * Added property `Warning` (string)
        > Optional warning message


    * Deleted property `Warnings` (array)
        > Optional warning message.
        >
        > FIXME(thaJeztah): this should have "omitempty" in the generated type.


##### `POST` /services/{id}/update


###### Request:

Changed content type : `application/json`

* Changed property `Networks` (array)
    > Specifies which networks the service should attach to.


* Changed property `TaskTemplate` (object)
    > User modifiable task configuration.


    * Changed property `ContainerSpec` (object)
        > Container spec for the service.
        >
        > <p><br /></p>
        >
        > > **Note**: ContainerSpec, NetworkAttachmentSpec, and PluginSpec are
        > > mutually exclusive. PluginSpec is only used when the Runtime field
        > > is set to `plugin`. NetworkAttachmentSpec is used when the Runtime
        > > field is set to `attachment`.


        * Deleted property `OomScoreAdj` (integer)
            > An integer value containing the score given to the container in
            > order to tune OOM killer preferences.


        * Changed property `Privileges` (object)
            > Security options for the container


            * Deleted property `Seccomp` (object)
                > Options for configuring seccomp on the container


            * Deleted property `AppArmor` (object)
                > Options for configuring AppArmor on the container


            * Deleted property `NoNewPrivileges` (boolean)
                > Configuration of the no_new_privs bit in the container


        * Changed property `Mounts` (array)
            > Specification for mounts to be added to containers created as part
            > of the service.


            Changed items (object):

            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Deleted property `ReadOnlyNonRecursive` (boolean)
                    > Make the mount non-recursively read-only, but still leave the mount recursive
                    > (unless NonRecursive is set to `true` in conjunction).
                    >
                    > Addded in v1.44, before that version all read-only mounts were
                    > non-recursive by default. To match the previous behaviour this
                    > will default to `true` for clients on versions prior to v1.44.


                * Deleted property `ReadOnlyForceRecursive` (boolean)
                    > Raise an error if the mount cannot be made recursively read-only.


            * Changed property `VolumeOptions` (object)
                > Optional configuration for the `volume` type.


                * Deleted property `Subpath` (string)
                    > Source path inside the volume. Must be relative without any back traversals.


            * Changed property `TmpfsOptions` (object)
                > Optional configuration for the `tmpfs` type.


                * Deleted property `Options` (array)
                    > The options to be passed to the tmpfs mount. An array of arrays.
                    > Flag options should be provided as 1-length arrays. Other types
                    > should be provided as as 2-length arrays, where the first item is
                    > the key and the second the value.


        * Changed property `HealthCheck` (object)
            > A test to perform to check that the container is healthy.


            * Deleted property `StartInterval` (integer)
                > The time to wait between checks in nanoseconds during the start period.
                > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


    * Changed property `Placement` (object)

        * Changed property `Constraints` (array)
            > An array of constraint expressions to limit the set of nodes where
            > a task can be scheduled. Constraint expressions can either use a
            > _match_ (`==`) or _exclude_ (`!=`) rule. Multiple constraints find
            > nodes that satisfy every expression (AND match). Constraints can
            > match node or Docker Engine labels as follows:
            >
            > node attribute       | matches                        | example
            > ---------------------|--------------------------------|-----------------------------------------------
            > `node.id`            | Node ID                        | `node.id==2ivku8v2gvtg4`
            > `node.hostname`      | Node hostname                  | `node.hostname!=node-2`
            > `node.role`          | Node role (`manager`/`worker`) | `node.role==manager`
            > `node.platform.os`   | Node operating system          | `node.platform.os==windows`
            > `node.platform.arch` | Node architecture              | `node.platform.arch==x86_64`
            > `node.labels`        | User-defined node labels       | `node.labels.security==high`
            > `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-14.04`
            >
            > `engine.labels` apply to Docker Engine labels like operating system,
            > drivers, etc. Swarm administrators add `node.labels` for operational
            > purposes by using the [`node update endpoint`](#operation/NodeUpdate).


##### `GET` /tasks


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `Status` (object)

        * Deleted property `PortStatus` (object)

        * Changed property `ContainerStatus` (object)

    * Changed property `Spec` (object)
        > User modifiable task configuration.


        * Changed property `ContainerSpec` (object)
            > Container spec for the service.
            >
            > <p><br /></p>
            >
            > > **Note**: ContainerSpec, NetworkAttachmentSpec, and PluginSpec are
            > > mutually exclusive. PluginSpec is only used when the Runtime field
            > > is set to `plugin`. NetworkAttachmentSpec is used when the Runtime
            > > field is set to `attachment`.


            * Deleted property `OomScoreAdj` (integer)
                > An integer value containing the score given to the container in
                > order to tune OOM killer preferences.


            * Changed property `Privileges` (object)
                > Security options for the container


                * Deleted property `Seccomp` (object)
                    > Options for configuring seccomp on the container


                * Deleted property `AppArmor` (object)
                    > Options for configuring AppArmor on the container


                * Deleted property `NoNewPrivileges` (boolean)
                    > Configuration of the no_new_privs bit in the container


            * Changed property `Mounts` (array)
                > Specification for mounts to be added to containers created as part
                > of the service.


                Changed items (object):

                * Changed property `BindOptions` (object)
                    > Optional configuration for the `bind` type.


                    * Deleted property `ReadOnlyNonRecursive` (boolean)
                        > Make the mount non-recursively read-only, but still leave the mount recursive
                        > (unless NonRecursive is set to `true` in conjunction).
                        >
                        > Addded in v1.44, before that version all read-only mounts were
                        > non-recursive by default. To match the previous behaviour this
                        > will default to `true` for clients on versions prior to v1.44.


                    * Deleted property `ReadOnlyForceRecursive` (boolean)
                        > Raise an error if the mount cannot be made recursively read-only.


                * Changed property `VolumeOptions` (object)
                    > Optional configuration for the `volume` type.


                    * Deleted property `Subpath` (string)
                        > Source path inside the volume. Must be relative without any back traversals.


                * Changed property `TmpfsOptions` (object)
                    > Optional configuration for the `tmpfs` type.


                    * Deleted property `Options` (array)
                        > The options to be passed to the tmpfs mount. An array of arrays.
                        > Flag options should be provided as 1-length arrays. Other types
                        > should be provided as as 2-length arrays, where the first item is
                        > the key and the second the value.


            * Changed property `HealthCheck` (object)
                > A test to perform to check that the container is healthy.


                * Deleted property `StartInterval` (integer)
                    > The time to wait between checks in nanoseconds during the start period.
                    > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


        * Changed property `Placement` (object)

            * Changed property `Constraints` (array)
                > An array of constraint expressions to limit the set of nodes where
                > a task can be scheduled. Constraint expressions can either use a
                > _match_ (`==`) or _exclude_ (`!=`) rule. Multiple constraints find
                > nodes that satisfy every expression (AND match). Constraints can
                > match node or Docker Engine labels as follows:
                >
                > node attribute       | matches                        | example
                > ---------------------|--------------------------------|-----------------------------------------------
                > `node.id`            | Node ID                        | `node.id==2ivku8v2gvtg4`
                > `node.hostname`      | Node hostname                  | `node.hostname!=node-2`
                > `node.role`          | Node role (`manager`/`worker`) | `node.role==manager`
                > `node.platform.os`   | Node operating system          | `node.platform.os==windows`
                > `node.platform.arch` | Node architecture              | `node.platform.arch==x86_64`
                > `node.labels`        | User-defined node labels       | `node.labels.security==high`
                > `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-14.04`
                >
                > `engine.labels` apply to Docker Engine labels like operating system,
                > drivers, etc. Swarm administrators add `node.labels` for operational
                > purposes by using the [`node update endpoint`](#operation/NodeUpdate).


##### `GET` /tasks/{id}


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Changed property `Status` (object)

        * Deleted property `PortStatus` (object)

        * Changed property `ContainerStatus` (object)

    * Changed property `Spec` (object)
        > User modifiable task configuration.


        * Changed property `ContainerSpec` (object)
            > Container spec for the service.
            >
            > <p><br /></p>
            >
            > > **Note**: ContainerSpec, NetworkAttachmentSpec, and PluginSpec are
            > > mutually exclusive. PluginSpec is only used when the Runtime field
            > > is set to `plugin`. NetworkAttachmentSpec is used when the Runtime
            > > field is set to `attachment`.


            * Deleted property `OomScoreAdj` (integer)
                > An integer value containing the score given to the container in
                > order to tune OOM killer preferences.


            * Changed property `Privileges` (object)
                > Security options for the container


                * Deleted property `Seccomp` (object)
                    > Options for configuring seccomp on the container


                * Deleted property `AppArmor` (object)
                    > Options for configuring AppArmor on the container


                * Deleted property `NoNewPrivileges` (boolean)
                    > Configuration of the no_new_privs bit in the container


            * Changed property `Mounts` (array)
                > Specification for mounts to be added to containers created as part
                > of the service.


                Changed items (object):

                * Changed property `BindOptions` (object)
                    > Optional configuration for the `bind` type.


                    * Deleted property `ReadOnlyNonRecursive` (boolean)
                        > Make the mount non-recursively read-only, but still leave the mount recursive
                        > (unless NonRecursive is set to `true` in conjunction).
                        >
                        > Addded in v1.44, before that version all read-only mounts were
                        > non-recursive by default. To match the previous behaviour this
                        > will default to `true` for clients on versions prior to v1.44.


                    * Deleted property `ReadOnlyForceRecursive` (boolean)
                        > Raise an error if the mount cannot be made recursively read-only.


                * Changed property `VolumeOptions` (object)
                    > Optional configuration for the `volume` type.


                    * Deleted property `Subpath` (string)
                        > Source path inside the volume. Must be relative without any back traversals.


                * Changed property `TmpfsOptions` (object)
                    > Optional configuration for the `tmpfs` type.


                    * Deleted property `Options` (array)
                        > The options to be passed to the tmpfs mount. An array of arrays.
                        > Flag options should be provided as 1-length arrays. Other types
                        > should be provided as as 2-length arrays, where the first item is
                        > the key and the second the value.


            * Changed property `HealthCheck` (object)
                > A test to perform to check that the container is healthy.


                * Deleted property `StartInterval` (integer)
                    > The time to wait between checks in nanoseconds during the start period.
                    > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


        * Changed property `Placement` (object)

            * Changed property `Constraints` (array)
                > An array of constraint expressions to limit the set of nodes where
                > a task can be scheduled. Constraint expressions can either use a
                > _match_ (`==`) or _exclude_ (`!=`) rule. Multiple constraints find
                > nodes that satisfy every expression (AND match). Constraints can
                > match node or Docker Engine labels as follows:
                >
                > node attribute       | matches                        | example
                > ---------------------|--------------------------------|-----------------------------------------------
                > `node.id`            | Node ID                        | `node.id==2ivku8v2gvtg4`
                > `node.hostname`      | Node hostname                  | `node.hostname!=node-2`
                > `node.role`          | Node role (`manager`/`worker`) | `node.role==manager`
                > `node.platform.os`   | Node operating system          | `node.platform.os==windows`
                > `node.platform.arch` | Node architecture              | `node.platform.arch==x86_64`
                > `node.labels`        | User-defined node labels       | `node.labels.security==high`
                > `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-14.04`
                >
                > `engine.labels` apply to Docker Engine labels like operating system,
                > drivers, etc. Swarm administrators add `node.labels` for operational
                > purposes by using the [`node update endpoint`](#operation/NodeUpdate).


##### `GET` /info


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    * Deleted property `CDISpecDirs` (array)
        > List of directories where (Container Device Interface) CDI
        > specifications are located.
        >
        > These specifications define vendor-specific modifications to an OCI
        > runtime specification for a container being created.
        >
        > An empty list indicates that CDI device injection is disabled.
        >
        > Note that since using CDI device injection requires the daemon to have
        > experimental enabled. For non-experimental daemons an empty list will
        > always be returned.


    * Deleted property `Containerd` (object)

    * Changed property `OperatingSystem` (string)
        > Name of the host's operating system, for example: "Ubuntu 16.04.2 LTS"
        > or "Windows Server 2016 Datacenter"


    * Changed property `SecurityOptions` (array)
        > List of security features that are enabled on the daemon, such as
        > apparmor, seccomp, SELinux, user-namespaces (userns), and rootless.
        >
        > Additional configuration options for each security feature may
        > be present, and are included as a comma-separated list of key/value
        > pairs.


    * Changed property `Runtimes` (object)
        > List of [OCI compliant](https://github.com/opencontainers/runtime-spec)
        > runtimes configured on the daemon. Keys hold the "name" used to
        > reference the runtime.
        >
        > The Docker daemon relies on an OCI compliant runtime (invoked via the
        > `containerd` daemon) as its interface to the Linux kernel namespaces,
        > cgroups, and SELinux.
        >
        > The default runtime is `runc`, and automatically configured. Additional
        > runtimes can be configured by the user and will be listed here.


##### `GET` /services


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


        * Changed property `Networks` (array)
            > Specifies which networks the service should attach to.


        * Changed property `TaskTemplate` (object)
            > User modifiable task configuration.


            * Changed property `ContainerSpec` (object)
                > Container spec for the service.
                >
                > <p><br /></p>
                >
                > > **Note**: ContainerSpec, NetworkAttachmentSpec, and PluginSpec are
                > > mutually exclusive. PluginSpec is only used when the Runtime field
                > > is set to `plugin`. NetworkAttachmentSpec is used when the Runtime
                > > field is set to `attachment`.


                * Deleted property `OomScoreAdj` (integer)
                    > An integer value containing the score given to the container in
                    > order to tune OOM killer preferences.


                * Changed property `Privileges` (object)
                    > Security options for the container


                    * Deleted property `Seccomp` (object)
                        > Options for configuring seccomp on the container


                    * Deleted property `AppArmor` (object)
                        > Options for configuring AppArmor on the container


                    * Deleted property `NoNewPrivileges` (boolean)
                        > Configuration of the no_new_privs bit in the container


                * Changed property `Mounts` (array)
                    > Specification for mounts to be added to containers created as part
                    > of the service.


                    Changed items (object):

                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Deleted property `ReadOnlyNonRecursive` (boolean)
                            > Make the mount non-recursively read-only, but still leave the mount recursive
                            > (unless NonRecursive is set to `true` in conjunction).
                            >
                            > Addded in v1.44, before that version all read-only mounts were
                            > non-recursive by default. To match the previous behaviour this
                            > will default to `true` for clients on versions prior to v1.44.


                        * Deleted property `ReadOnlyForceRecursive` (boolean)
                            > Raise an error if the mount cannot be made recursively read-only.


                    * Changed property `VolumeOptions` (object)
                        > Optional configuration for the `volume` type.


                        * Deleted property `Subpath` (string)
                            > Source path inside the volume. Must be relative without any back traversals.


                    * Changed property `TmpfsOptions` (object)
                        > Optional configuration for the `tmpfs` type.


                        * Deleted property `Options` (array)
                            > The options to be passed to the tmpfs mount. An array of arrays.
                            > Flag options should be provided as 1-length arrays. Other types
                            > should be provided as as 2-length arrays, where the first item is
                            > the key and the second the value.


                * Changed property `HealthCheck` (object)
                    > A test to perform to check that the container is healthy.


                    * Deleted property `StartInterval` (integer)
                        > The time to wait between checks in nanoseconds during the start period.
                        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


            * Changed property `Placement` (object)

                * Changed property `Constraints` (array)
                    > An array of constraint expressions to limit the set of nodes where
                    > a task can be scheduled. Constraint expressions can either use a
                    > _match_ (`==`) or _exclude_ (`!=`) rule. Multiple constraints find
                    > nodes that satisfy every expression (AND match). Constraints can
                    > match node or Docker Engine labels as follows:
                    >
                    > node attribute       | matches                        | example
                    > ---------------------|--------------------------------|-----------------------------------------------
                    > `node.id`            | Node ID                        | `node.id==2ivku8v2gvtg4`
                    > `node.hostname`      | Node hostname                  | `node.hostname!=node-2`
                    > `node.role`          | Node role (`manager`/`worker`) | `node.role==manager`
                    > `node.platform.os`   | Node operating system          | `node.platform.os==windows`
                    > `node.platform.arch` | Node architecture              | `node.platform.arch==x86_64`
                    > `node.labels`        | User-defined node labels       | `node.labels.security==high`
                    > `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-14.04`
                    >
                    > `engine.labels` apply to Docker Engine labels like operating system,
                    > drivers, etc. Swarm administrators add `node.labels` for operational
                    > purposes by using the [`node update endpoint`](#operation/NodeUpdate).


* Changed content type : `text/plain`

    Changed items (object):

    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


        * Changed property `Networks` (array)
            > Specifies which networks the service should attach to.


        * Changed property `TaskTemplate` (object)
            > User modifiable task configuration.


            * Changed property `ContainerSpec` (object)
                > Container spec for the service.
                >
                > <p><br /></p>
                >
                > > **Note**: ContainerSpec, NetworkAttachmentSpec, and PluginSpec are
                > > mutually exclusive. PluginSpec is only used when the Runtime field
                > > is set to `plugin`. NetworkAttachmentSpec is used when the Runtime
                > > field is set to `attachment`.


                * Deleted property `OomScoreAdj` (integer)
                    > An integer value containing the score given to the container in
                    > order to tune OOM killer preferences.


                * Changed property `Privileges` (object)
                    > Security options for the container


                    * Deleted property `Seccomp` (object)
                        > Options for configuring seccomp on the container


                    * Deleted property `AppArmor` (object)
                        > Options for configuring AppArmor on the container


                    * Deleted property `NoNewPrivileges` (boolean)
                        > Configuration of the no_new_privs bit in the container


                * Changed property `Mounts` (array)
                    > Specification for mounts to be added to containers created as part
                    > of the service.


                    Changed items (object):

                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Deleted property `ReadOnlyNonRecursive` (boolean)
                            > Make the mount non-recursively read-only, but still leave the mount recursive
                            > (unless NonRecursive is set to `true` in conjunction).
                            >
                            > Addded in v1.44, before that version all read-only mounts were
                            > non-recursive by default. To match the previous behaviour this
                            > will default to `true` for clients on versions prior to v1.44.


                        * Deleted property `ReadOnlyForceRecursive` (boolean)
                            > Raise an error if the mount cannot be made recursively read-only.


                    * Changed property `VolumeOptions` (object)
                        > Optional configuration for the `volume` type.


                        * Deleted property `Subpath` (string)
                            > Source path inside the volume. Must be relative without any back traversals.


                    * Changed property `TmpfsOptions` (object)
                        > Optional configuration for the `tmpfs` type.


                        * Deleted property `Options` (array)
                            > The options to be passed to the tmpfs mount. An array of arrays.
                            > Flag options should be provided as 1-length arrays. Other types
                            > should be provided as as 2-length arrays, where the first item is
                            > the key and the second the value.


                * Changed property `HealthCheck` (object)
                    > A test to perform to check that the container is healthy.


                    * Deleted property `StartInterval` (integer)
                        > The time to wait between checks in nanoseconds during the start period.
                        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


            * Changed property `Placement` (object)

                * Changed property `Constraints` (array)
                    > An array of constraint expressions to limit the set of nodes where
                    > a task can be scheduled. Constraint expressions can either use a
                    > _match_ (`==`) or _exclude_ (`!=`) rule. Multiple constraints find
                    > nodes that satisfy every expression (AND match). Constraints can
                    > match node or Docker Engine labels as follows:
                    >
                    > node attribute       | matches                        | example
                    > ---------------------|--------------------------------|-----------------------------------------------
                    > `node.id`            | Node ID                        | `node.id==2ivku8v2gvtg4`
                    > `node.hostname`      | Node hostname                  | `node.hostname!=node-2`
                    > `node.role`          | Node role (`manager`/`worker`) | `node.role==manager`
                    > `node.platform.os`   | Node operating system          | `node.platform.os==windows`
                    > `node.platform.arch` | Node architecture              | `node.platform.arch==x86_64`
                    > `node.labels`        | User-defined node labels       | `node.labels.security==high`
                    > `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-14.04`
                    >
                    > `engine.labels` apply to Docker Engine labels like operating system,
                    > drivers, etc. Swarm administrators add `node.labels` for operational
                    > purposes by using the [`node update endpoint`](#operation/NodeUpdate).


##### `GET` /services/{id}


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


        * Changed property `Networks` (array)
            > Specifies which networks the service should attach to.


        * Changed property `TaskTemplate` (object)
            > User modifiable task configuration.


            * Changed property `ContainerSpec` (object)
                > Container spec for the service.
                >
                > <p><br /></p>
                >
                > > **Note**: ContainerSpec, NetworkAttachmentSpec, and PluginSpec are
                > > mutually exclusive. PluginSpec is only used when the Runtime field
                > > is set to `plugin`. NetworkAttachmentSpec is used when the Runtime
                > > field is set to `attachment`.


                * Deleted property `OomScoreAdj` (integer)
                    > An integer value containing the score given to the container in
                    > order to tune OOM killer preferences.


                * Changed property `Privileges` (object)
                    > Security options for the container


                    * Deleted property `Seccomp` (object)
                        > Options for configuring seccomp on the container


                    * Deleted property `AppArmor` (object)
                        > Options for configuring AppArmor on the container


                    * Deleted property `NoNewPrivileges` (boolean)
                        > Configuration of the no_new_privs bit in the container


                * Changed property `Mounts` (array)
                    > Specification for mounts to be added to containers created as part
                    > of the service.


                    Changed items (object):

                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Deleted property `ReadOnlyNonRecursive` (boolean)
                            > Make the mount non-recursively read-only, but still leave the mount recursive
                            > (unless NonRecursive is set to `true` in conjunction).
                            >
                            > Addded in v1.44, before that version all read-only mounts were
                            > non-recursive by default. To match the previous behaviour this
                            > will default to `true` for clients on versions prior to v1.44.


                        * Deleted property `ReadOnlyForceRecursive` (boolean)
                            > Raise an error if the mount cannot be made recursively read-only.


                    * Changed property `VolumeOptions` (object)
                        > Optional configuration for the `volume` type.


                        * Deleted property `Subpath` (string)
                            > Source path inside the volume. Must be relative without any back traversals.


                    * Changed property `TmpfsOptions` (object)
                        > Optional configuration for the `tmpfs` type.


                        * Deleted property `Options` (array)
                            > The options to be passed to the tmpfs mount. An array of arrays.
                            > Flag options should be provided as 1-length arrays. Other types
                            > should be provided as as 2-length arrays, where the first item is
                            > the key and the second the value.


                * Changed property `HealthCheck` (object)
                    > A test to perform to check that the container is healthy.


                    * Deleted property `StartInterval` (integer)
                        > The time to wait between checks in nanoseconds during the start period.
                        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


            * Changed property `Placement` (object)

                * Changed property `Constraints` (array)
                    > An array of constraint expressions to limit the set of nodes where
                    > a task can be scheduled. Constraint expressions can either use a
                    > _match_ (`==`) or _exclude_ (`!=`) rule. Multiple constraints find
                    > nodes that satisfy every expression (AND match). Constraints can
                    > match node or Docker Engine labels as follows:
                    >
                    > node attribute       | matches                        | example
                    > ---------------------|--------------------------------|-----------------------------------------------
                    > `node.id`            | Node ID                        | `node.id==2ivku8v2gvtg4`
                    > `node.hostname`      | Node hostname                  | `node.hostname!=node-2`
                    > `node.role`          | Node role (`manager`/`worker`) | `node.role==manager`
                    > `node.platform.os`   | Node operating system          | `node.platform.os==windows`
                    > `node.platform.arch` | Node architecture              | `node.platform.arch==x86_64`
                    > `node.labels`        | User-defined node labels       | `node.labels.security==high`
                    > `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-14.04`
                    >
                    > `engine.labels` apply to Docker Engine labels like operating system,
                    > drivers, etc. Swarm administrators add `node.labels` for operational
                    > purposes by using the [`node update endpoint`](#operation/NodeUpdate).


* Changed content type : `text/plain`

    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


        * Changed property `Networks` (array)
            > Specifies which networks the service should attach to.


        * Changed property `TaskTemplate` (object)
            > User modifiable task configuration.


            * Changed property `ContainerSpec` (object)
                > Container spec for the service.
                >
                > <p><br /></p>
                >
                > > **Note**: ContainerSpec, NetworkAttachmentSpec, and PluginSpec are
                > > mutually exclusive. PluginSpec is only used when the Runtime field
                > > is set to `plugin`. NetworkAttachmentSpec is used when the Runtime
                > > field is set to `attachment`.


                * Deleted property `OomScoreAdj` (integer)
                    > An integer value containing the score given to the container in
                    > order to tune OOM killer preferences.


                * Changed property `Privileges` (object)
                    > Security options for the container


                    * Deleted property `Seccomp` (object)
                        > Options for configuring seccomp on the container


                    * Deleted property `AppArmor` (object)
                        > Options for configuring AppArmor on the container


                    * Deleted property `NoNewPrivileges` (boolean)
                        > Configuration of the no_new_privs bit in the container


                * Changed property `Mounts` (array)
                    > Specification for mounts to be added to containers created as part
                    > of the service.


                    Changed items (object):

                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Deleted property `ReadOnlyNonRecursive` (boolean)
                            > Make the mount non-recursively read-only, but still leave the mount recursive
                            > (unless NonRecursive is set to `true` in conjunction).
                            >
                            > Addded in v1.44, before that version all read-only mounts were
                            > non-recursive by default. To match the previous behaviour this
                            > will default to `true` for clients on versions prior to v1.44.


                        * Deleted property `ReadOnlyForceRecursive` (boolean)
                            > Raise an error if the mount cannot be made recursively read-only.


                    * Changed property `VolumeOptions` (object)
                        > Optional configuration for the `volume` type.


                        * Deleted property `Subpath` (string)
                            > Source path inside the volume. Must be relative without any back traversals.


                    * Changed property `TmpfsOptions` (object)
                        > Optional configuration for the `tmpfs` type.


                        * Deleted property `Options` (array)
                            > The options to be passed to the tmpfs mount. An array of arrays.
                            > Flag options should be provided as 1-length arrays. Other types
                            > should be provided as as 2-length arrays, where the first item is
                            > the key and the second the value.


                * Changed property `HealthCheck` (object)
                    > A test to perform to check that the container is healthy.


                    * Deleted property `StartInterval` (integer)
                        > The time to wait between checks in nanoseconds during the start period.
                        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


            * Changed property `Placement` (object)

                * Changed property `Constraints` (array)
                    > An array of constraint expressions to limit the set of nodes where
                    > a task can be scheduled. Constraint expressions can either use a
                    > _match_ (`==`) or _exclude_ (`!=`) rule. Multiple constraints find
                    > nodes that satisfy every expression (AND match). Constraints can
                    > match node or Docker Engine labels as follows:
                    >
                    > node attribute       | matches                        | example
                    > ---------------------|--------------------------------|-----------------------------------------------
                    > `node.id`            | Node ID                        | `node.id==2ivku8v2gvtg4`
                    > `node.hostname`      | Node hostname                  | `node.hostname!=node-2`
                    > `node.role`          | Node role (`manager`/`worker`) | `node.role==manager`
                    > `node.platform.os`   | Node operating system          | `node.platform.os==windows`
                    > `node.platform.arch` | Node architecture              | `node.platform.arch==x86_64`
                    > `node.labels`        | User-defined node labels       | `node.labels.security==high`
                    > `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-14.04`
                    >
                    > `engine.labels` apply to Docker Engine labels like operating system,
                    > drivers, etc. Swarm administrators add `node.labels` for operational
                    > purposes by using the [`node update endpoint`](#operation/NodeUpdate).

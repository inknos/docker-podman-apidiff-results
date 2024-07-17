#### What's Changed
---

##### `POST` /images/{name}/push


###### Parameters:

Deleted: `platform` in `query`
> Select a platform-specific manifest to be pushed. OCI platform (JSON encoded)


##### `GET` /images/search


###### Parameters:

Changed: `filters` in `query`
> A JSON encoded value of the filters (a `map[string][]string`) to process on the images list. Available filters:
>
> - `is-automated=(true|false)` (deprecated, see below)
> - `is-official=(true|false)`
> - `stars=<number>` Matches images that has at least 'number' stars.
>
> The `is-automated` filter is deprecated. The `is_automated` field has
> been deprecated by Docker Hub's search API. Consequently, searching
> for `is-automated=true` will yield no results.


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `is_automated` (boolean)
        > Whether this repository has automated builds enabled.
        >
        > <p><br /></p>
        >
        > > **Deprecated**: This field is deprecated and will always
        > > be "false" in future.


##### `POST` /commit


###### Request:

Changed content type : `application/json`

##### `GET` /events


##### `POST` /networks/create


###### Request:

Changed content type : `application/json`

* Added property `CheckDuplicate` (boolean)
    > Deprecated: CheckDuplicate is now always enabled.


###### Return Type:

Changed response : **201 Created**
> No error


* Changed content type : `application/json`

    New optional properties:
    - `Id`
    - `Warning`

    * Changed property `Warning` (string)

##### `GET` /containers/json


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `HostConfig` (object)

        * Deleted property `Annotations` (object)
            > Arbitrary key-value metadata attached to container


##### `POST` /containers/create


###### Request:

Changed content type : `application/json`

* Changed property `HostConfig` (object)
    > A container's resources (cgroups config, ulimits, etc)


    * Changed property `Mounts` (array)
        > Specification for mounts to be added to the container.


        Changed items (object):

        * Changed property `BindOptions` (object)
            > Optional configuration for the `bind` type.


            * Changed property `ReadOnlyNonRecursive` (boolean)
                > Make the mount non-recursively read-only, but still leave the mount recursive
                > (unless NonRecursive is set to true in conjunction).


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


Changed content type : `application/octet-stream`

* Changed property `HostConfig` (object)
    > A container's resources (cgroups config, ulimits, etc)


    * Changed property `Mounts` (array)
        > Specification for mounts to be added to the container.


        Changed items (object):

        * Changed property `BindOptions` (object)
            > Optional configuration for the `bind` type.


            * Changed property `ReadOnlyNonRecursive` (boolean)
                > Make the mount non-recursively read-only, but still leave the mount recursive
                > (unless NonRecursive is set to true in conjunction).


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


    * Changed property `HostConfig` (object)
        > A container's resources (cgroups config, ulimits, etc)


        * Changed property `Mounts` (array)
            > Specification for mounts to be added to the container.


            Changed items (object):

            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Changed property `ReadOnlyNonRecursive` (boolean)
                    > Make the mount non-recursively read-only, but still leave the mount recursive
                    > (unless NonRecursive is set to true in conjunction).


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


##### `GET` /images/{name}/json


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    * Added property `Container` (string)
        > The ID of the container that was used to create the image.
        >
        > Depending on how the image was created, this field may be empty.
        >
        > **Deprecated**: this field is kept for backward compatibility, but
        > will be removed in API v1.45.


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


            * Property `StartInterval` (integer)
                > The time to wait between checks in nanoseconds during the start period.
                > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


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
            >
            > Deprecated: this field is deprecated in API v1.44 and up. Use EndpointSettings.MacAddress instead.


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
            > > **Deprecated**: this field is deprecated in API v1.44 and up. It is always omitted.


        * Changed property `StopTimeout` (integer)
            > Timeout to stop a container in seconds.
            >
            > <p><br /></p>
            >
            > > **Note**: this field is always omitted and must not be used.


##### `GET` /system/df


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Changed property `Containers` (array)

        Changed items (object):

        * Changed property `HostConfig` (object)

            * Deleted property `Annotations` (object)
                > Arbitrary key-value metadata attached to container


* Changed content type : `text/plain`

    * Changed property `Containers` (array)

        Changed items (object):

        * Changed property `HostConfig` (object)

            * Deleted property `Annotations` (object)
                > Arbitrary key-value metadata attached to container


##### `POST` /services/create


###### Request:

Changed content type : `application/json`

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


        * Changed property `Mounts` (array)
            > Specification for mounts to be added to containers created as part
            > of the service.


            Changed items (object):

            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Changed property `ReadOnlyNonRecursive` (boolean)
                    > Make the mount non-recursively read-only, but still leave the mount recursive
                    > (unless NonRecursive is set to true in conjunction).


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


##### `POST` /services/{id}/update


###### Request:

Changed content type : `application/json`

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


        * Changed property `Mounts` (array)
            > Specification for mounts to be added to containers created as part
            > of the service.


            Changed items (object):

            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Changed property `ReadOnlyNonRecursive` (boolean)
                    > Make the mount non-recursively read-only, but still leave the mount recursive
                    > (unless NonRecursive is set to true in conjunction).


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

    * Deleted property `Containerd` (object)

    * Changed property `OperatingSystem` (string)
        > Name of the host's operating system, for example: "Ubuntu 16.04.2 LTS"
        > or "Windows Server 2016 Datacenter"


##### `GET` /tasks


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    Changed items (object):

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


            * Changed property `Mounts` (array)
                > Specification for mounts to be added to containers created as part
                > of the service.


                Changed items (object):

                * Changed property `BindOptions` (object)
                    > Optional configuration for the `bind` type.


                    * Changed property `ReadOnlyNonRecursive` (boolean)
                        > Make the mount non-recursively read-only, but still leave the mount recursive
                        > (unless NonRecursive is set to true in conjunction).


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


            * Changed property `Mounts` (array)
                > Specification for mounts to be added to containers created as part
                > of the service.


                Changed items (object):

                * Changed property `BindOptions` (object)
                    > Optional configuration for the `bind` type.


                    * Changed property `ReadOnlyNonRecursive` (boolean)
                        > Make the mount non-recursively read-only, but still leave the mount recursive
                        > (unless NonRecursive is set to true in conjunction).


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


##### `GET` /services


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


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


                * Changed property `Mounts` (array)
                    > Specification for mounts to be added to containers created as part
                    > of the service.


                    Changed items (object):

                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Changed property `ReadOnlyNonRecursive` (boolean)
                            > Make the mount non-recursively read-only, but still leave the mount recursive
                            > (unless NonRecursive is set to true in conjunction).


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


                * Changed property `Mounts` (array)
                    > Specification for mounts to be added to containers created as part
                    > of the service.


                    Changed items (object):

                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Changed property `ReadOnlyNonRecursive` (boolean)
                            > Make the mount non-recursively read-only, but still leave the mount recursive
                            > (unless NonRecursive is set to true in conjunction).


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


                * Changed property `Mounts` (array)
                    > Specification for mounts to be added to containers created as part
                    > of the service.


                    Changed items (object):

                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Changed property `ReadOnlyNonRecursive` (boolean)
                            > Make the mount non-recursively read-only, but still leave the mount recursive
                            > (unless NonRecursive is set to true in conjunction).


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


                * Changed property `Mounts` (array)
                    > Specification for mounts to be added to containers created as part
                    > of the service.


                    Changed items (object):

                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Changed property `ReadOnlyNonRecursive` (boolean)
                            > Make the mount non-recursively read-only, but still leave the mount recursive
                            > (unless NonRecursive is set to true in conjunction).


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

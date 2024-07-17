#### What's Changed
---

##### `POST` /images/{name}/push


###### Parameters:

Added: `platform` in `query`
> Select a platform-specific manifest to be pushed. OCI platform (JSON encoded)


##### `GET` /images/search


###### Parameters:

Changed: `filters` in `query`
> A JSON encoded value of the filters (a `map[string][]string`) to process on the images list. Available filters:
> 
> - `is-official=(true|false)`
> - `stars=<number>` Matches images that has at least 'number' stars.


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
        > > **Deprecated**: This field is deprecated and will always be "false".


##### `POST` /commit


###### Request:

Changed content type : `application/json`

##### `GET` /events


##### `POST` /networks/create


###### Request:

Changed content type : `application/json`

* Deleted property `CheckDuplicate` (boolean)
    > Deprecated: CheckDuplicate is now always enabled.


###### Return Type:

Changed response : **201 Created**
> Network created successfully


* Changed content type : `application/json`

    New required properties:
    - `Id`
    - `Warning`

    * Changed property `Warning` (string)
        > Warnings encountered when creating the container


##### `GET` /containers/json


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `HostConfig` (object)

        * Added property `Annotations` (object)
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
                > (unless NonRecursive is set to `true` in conjunction).
                > 
                > Addded in v1.44, before that version all read-only mounts were
                > non-recursive by default. To match the previous behaviour this
                > will default to `true` for clients on versions prior to v1.44.


        * Changed property `VolumeOptions` (object)
            > Optional configuration for the `volume` type.


            * Added property `Subpath` (string)
                > Source path inside the volume. Must be relative without any back traversals.


        * Changed property `TmpfsOptions` (object)
            > Optional configuration for the `tmpfs` type.


            * Added property `Options` (array)
                > The options to be passed to the tmpfs mount. An array of arrays.
                > Flag options should be provided as 1-length arrays. Other types
                > should be provided as as 2-length arrays, where the first item is
                > the key and the second the value.


                Items (array):

                Items (string):

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
                > (unless NonRecursive is set to `true` in conjunction).
                > 
                > Addded in v1.44, before that version all read-only mounts were
                > non-recursive by default. To match the previous behaviour this
                > will default to `true` for clients on versions prior to v1.44.


        * Changed property `VolumeOptions` (object)
            > Optional configuration for the `volume` type.


            * Added property `Subpath` (string)
                > Source path inside the volume. Must be relative without any back traversals.


        * Changed property `TmpfsOptions` (object)
            > Optional configuration for the `tmpfs` type.


            * Added property `Options` (array)
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


    * Changed property `HostConfig` (object)
        > A container's resources (cgroups config, ulimits, etc)


        * Changed property `Mounts` (array)
            > Specification for mounts to be added to the container.


            Changed items (object):

            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Changed property `ReadOnlyNonRecursive` (boolean)
                    > Make the mount non-recursively read-only, but still leave the mount recursive
                    > (unless NonRecursive is set to `true` in conjunction).
                    > 
                    > Addded in v1.44, before that version all read-only mounts were
                    > non-recursive by default. To match the previous behaviour this
                    > will default to `true` for clients on versions prior to v1.44.


            * Changed property `VolumeOptions` (object)
                > Optional configuration for the `volume` type.


                * Added property `Subpath` (string)
                    > Source path inside the volume. Must be relative without any back traversals.


            * Changed property `TmpfsOptions` (object)
                > Optional configuration for the `tmpfs` type.


                * Added property `Options` (array)
                    > The options to be passed to the tmpfs mount. An array of arrays.
                    > Flag options should be provided as 1-length arrays. Other types
                    > should be provided as as 2-length arrays, where the first item is
                    > the key and the second the value.


##### `GET` /images/{name}/json


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    * Deleted property `Container` (string)
        > The ID of the container that was used to create the image.
        > 
        > Depending on how the image was created, this field may be empty.
        > 
        > **Deprecated**: this field is kept for backward compatibility, but
        > will be removed in API v1.45.


    * Deleted property `ContainerConfig` (object)
        > Configuration for a container that is portable between hosts.


    * Changed property `Config` (object)
        > Configuration of the image. These fields are used as defaults
        > when starting a container from the image.


        * Changed property `Hostname` (string)
            > The hostname to use for the container, as a valid RFC 1123 hostname.
            > 
            > <p><br /></p>
            > 
            > > **Deprecated**: this field is not part of the image specification and is
            > > always empty. It must not be used, and will be removed in API v1.47.


        * Changed property `Domainname` (string)
            > The domain name to use for the container.
            > 
            > <p><br /></p>
            > 
            > > **Deprecated**: this field is not part of the image specification and is
            > > always empty. It must not be used, and will be removed in API v1.47.


        * Changed property `AttachStdin` (boolean)
            > Whether to attach to `stdin`.
            > 
            > <p><br /></p>
            > 
            > > **Deprecated**: this field is not part of the image specification and is
            > > always false. It must not be used, and will be removed in API v1.47.


        * Changed property `AttachStdout` (boolean)
            > Whether to attach to `stdout`.
            > 
            > <p><br /></p>
            > 
            > > **Deprecated**: this field is not part of the image specification and is
            > > always false. It must not be used, and will be removed in API v1.47.


        * Changed property `AttachStderr` (boolean)
            > Whether to attach to `stderr`.
            > 
            > <p><br /></p>
            > 
            > > **Deprecated**: this field is not part of the image specification and is
            > > always false. It must not be used, and will be removed in API v1.47.


        * Changed property `Tty` (boolean)
            > Attach standard streams to a TTY, including `stdin` if it is not closed.
            > 
            > <p><br /></p>
            > 
            > > **Deprecated**: this field is not part of the image specification and is
            > > always false. It must not be used, and will be removed in API v1.47.


        * Changed property `OpenStdin` (boolean)
            > Open `stdin`
            > 
            > <p><br /></p>
            > 
            > > **Deprecated**: this field is not part of the image specification and is
            > > always false. It must not be used, and will be removed in API v1.47.


        * Changed property `StdinOnce` (boolean)
            > Close `stdin` after one attached client disconnects.
            > 
            > <p><br /></p>
            > 
            > > **Deprecated**: this field is not part of the image specification and is
            > > always false. It must not be used, and will be removed in API v1.47.


        * Changed property `Image` (string)
            > The name (or reference) of the image to use when creating the container,
            > or which was used when the container was created.
            > 
            > <p><br /></p>
            > 
            > > **Deprecated**: this field is not part of the image specification and is
            > > always empty. It must not be used, and will be removed in API v1.47.


        * Changed property `NetworkDisabled` (boolean)
            > Disable networking for the container.
            > 
            > <p><br /></p>
            > 
            > > **Deprecated**: this field is not part of the image specification and is
            > > always omitted. It must not be used, and will be removed in API v1.47.


        * Changed property `MacAddress` (string)
            > MAC address of the container.
            > 
            > <p><br /></p>
            > 
            > > **Deprecated**: this field is not part of the image specification and is
            > > always omitted. It must not be used, and will be removed in API v1.47.


        * Changed property `StopTimeout` (integer)
            > Timeout to stop a container in seconds.
            > 
            > <p><br /></p>
            > 
            > > **Deprecated**: this field is not part of the image specification and is
            > > always omitted. It must not be used, and will be removed in API v1.47.


##### `GET` /system/df


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Changed property `Containers` (array)

        Changed items (object):

        * Changed property `HostConfig` (object)

            * Added property `Annotations` (object)
                > Arbitrary key-value metadata attached to container


* Changed content type : `text/plain`

    * Changed property `Containers` (array)

        Changed items (object):

        * Changed property `HostConfig` (object)

            * Added property `Annotations` (object)
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


        * Added property `OomScoreAdj` (integer)
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
                    > (unless NonRecursive is set to `true` in conjunction).
                    > 
                    > Addded in v1.44, before that version all read-only mounts were
                    > non-recursive by default. To match the previous behaviour this
                    > will default to `true` for clients on versions prior to v1.44.


            * Changed property `VolumeOptions` (object)
                > Optional configuration for the `volume` type.


                * Added property `Subpath` (string)
                    > Source path inside the volume. Must be relative without any back traversals.


            * Changed property `TmpfsOptions` (object)
                > Optional configuration for the `tmpfs` type.


                * Added property `Options` (array)
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
            > `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-24.04`
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


        * Added property `OomScoreAdj` (integer)
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
                    > (unless NonRecursive is set to `true` in conjunction).
                    > 
                    > Addded in v1.44, before that version all read-only mounts were
                    > non-recursive by default. To match the previous behaviour this
                    > will default to `true` for clients on versions prior to v1.44.


            * Changed property `VolumeOptions` (object)
                > Optional configuration for the `volume` type.


                * Added property `Subpath` (string)
                    > Source path inside the volume. Must be relative without any back traversals.


            * Changed property `TmpfsOptions` (object)
                > Optional configuration for the `tmpfs` type.


                * Added property `Options` (array)
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
            > `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-24.04`
            > 
            > `engine.labels` apply to Docker Engine labels like operating system,
            > drivers, etc. Swarm administrators add `node.labels` for operational
            > purposes by using the [`node update endpoint`](#operation/NodeUpdate).


##### `GET` /info


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    * Added property `Containerd` (object)
        > Information for connecting to the containerd instance that is used by the daemon.
        > This is included for debugging purposes only.


        * Property `Address` (string)
            > The address of the containerd socket.


        * Property `Namespaces` (object)
            > The namespaces that the daemon uses for running containers and
            > plugins in containerd. These namespaces can be configured in the
            > daemon configuration, and are considered to be used exclusively
            > by the daemon, Tampering with the containerd instance may cause
            > unexpected behavior.
            > 
            > As these namespaces are considered to be exclusively accessed
            > by the daemon, it is not recommended to change these values,
            > or to change them to a value that is used by other systems,
            > such as cri-containerd.


            * Property `Containers` (string)
                > The default containerd namespace used for containers managed
                > by the daemon.
                > 
                > The default namespace for containers is "moby", but will be
                > suffixed with the `<uid>.<gid>` of the remapped `root` if
                > user-namespaces are enabled and the containerd image-store
                > is used.


            * Property `Plugins` (string)
                > The default containerd namespace used for plugins managed by
                > the daemon.
                > 
                > The default namespace for plugins is "plugins.moby", but will be
                > suffixed with the `<uid>.<gid>` of the remapped `root` if
                > user-namespaces are enabled and the containerd image-store
                > is used.


    * Changed property `OperatingSystem` (string)
        > Name of the host's operating system, for example: "Ubuntu 24.04 LTS"
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


            * Added property `OomScoreAdj` (integer)
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
                        > (unless NonRecursive is set to `true` in conjunction).
                        > 
                        > Addded in v1.44, before that version all read-only mounts were
                        > non-recursive by default. To match the previous behaviour this
                        > will default to `true` for clients on versions prior to v1.44.


                * Changed property `VolumeOptions` (object)
                    > Optional configuration for the `volume` type.


                    * Added property `Subpath` (string)
                        > Source path inside the volume. Must be relative without any back traversals.


                * Changed property `TmpfsOptions` (object)
                    > Optional configuration for the `tmpfs` type.


                    * Added property `Options` (array)
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
                > `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-24.04`
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


            * Added property `OomScoreAdj` (integer)
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
                        > (unless NonRecursive is set to `true` in conjunction).
                        > 
                        > Addded in v1.44, before that version all read-only mounts were
                        > non-recursive by default. To match the previous behaviour this
                        > will default to `true` for clients on versions prior to v1.44.


                * Changed property `VolumeOptions` (object)
                    > Optional configuration for the `volume` type.


                    * Added property `Subpath` (string)
                        > Source path inside the volume. Must be relative without any back traversals.


                * Changed property `TmpfsOptions` (object)
                    > Optional configuration for the `tmpfs` type.


                    * Added property `Options` (array)
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
                > `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-24.04`
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


                * Added property `OomScoreAdj` (integer)
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
                            > (unless NonRecursive is set to `true` in conjunction).
                            > 
                            > Addded in v1.44, before that version all read-only mounts were
                            > non-recursive by default. To match the previous behaviour this
                            > will default to `true` for clients on versions prior to v1.44.


                    * Changed property `VolumeOptions` (object)
                        > Optional configuration for the `volume` type.


                        * Added property `Subpath` (string)
                            > Source path inside the volume. Must be relative without any back traversals.


                    * Changed property `TmpfsOptions` (object)
                        > Optional configuration for the `tmpfs` type.


                        * Added property `Options` (array)
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
                    > `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-24.04`
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


                * Added property `OomScoreAdj` (integer)
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
                            > (unless NonRecursive is set to `true` in conjunction).
                            > 
                            > Addded in v1.44, before that version all read-only mounts were
                            > non-recursive by default. To match the previous behaviour this
                            > will default to `true` for clients on versions prior to v1.44.


                    * Changed property `VolumeOptions` (object)
                        > Optional configuration for the `volume` type.


                        * Added property `Subpath` (string)
                            > Source path inside the volume. Must be relative without any back traversals.


                    * Changed property `TmpfsOptions` (object)
                        > Optional configuration for the `tmpfs` type.


                        * Added property `Options` (array)
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
                    > `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-24.04`
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


                * Added property `OomScoreAdj` (integer)
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
                            > (unless NonRecursive is set to `true` in conjunction).
                            > 
                            > Addded in v1.44, before that version all read-only mounts were
                            > non-recursive by default. To match the previous behaviour this
                            > will default to `true` for clients on versions prior to v1.44.


                    * Changed property `VolumeOptions` (object)
                        > Optional configuration for the `volume` type.


                        * Added property `Subpath` (string)
                            > Source path inside the volume. Must be relative without any back traversals.


                    * Changed property `TmpfsOptions` (object)
                        > Optional configuration for the `tmpfs` type.


                        * Added property `Options` (array)
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
                    > `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-24.04`
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


                * Added property `OomScoreAdj` (integer)
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
                            > (unless NonRecursive is set to `true` in conjunction).
                            > 
                            > Addded in v1.44, before that version all read-only mounts were
                            > non-recursive by default. To match the previous behaviour this
                            > will default to `true` for clients on versions prior to v1.44.


                    * Changed property `VolumeOptions` (object)
                        > Optional configuration for the `volume` type.


                        * Added property `Subpath` (string)
                            > Source path inside the volume. Must be relative without any back traversals.


                    * Changed property `TmpfsOptions` (object)
                        > Optional configuration for the `tmpfs` type.


                        * Added property `Options` (array)
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
                    > `engine.labels`      | Docker Engine's labels         | `engine.labels.operatingsystem==ubuntu-24.04`
                    > 
                    > `engine.labels` apply to Docker Engine labels like operating system,
                    > drivers, etc. Swarm administrators add `node.labels` for operational
                    > purposes by using the [`node update endpoint`](#operation/NodeUpdate).



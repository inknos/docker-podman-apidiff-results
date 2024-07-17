#### What's Changed
---

##### `POST` /images/{name}/push


###### Parameters:

Deleted: `platform` in `query`
> Select a platform-specific manifest to be pushed. OCI platform (JSON encoded)


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

    * Changed property `HostConfig` (object)
        > A container's resources (cgroups config, ulimits, etc)


        * Changed property `Mounts` (array)
            > Specification for mounts to be added to the container.


            Changed items (object):

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



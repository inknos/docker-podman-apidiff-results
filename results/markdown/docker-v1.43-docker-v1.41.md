#### What's Deleted
---

##### `PUT` /volumes/{name}

> "Update a volume. Valid only for Swarm cluster volumes"


#### What's Changed
---

##### `GET` /containers/{id}/logs


###### Return Type:

Changed response : **200 OK**
> logs returned as a stream in response body.
> For the stream format, [see the documentation for the attach endpoint](#operation/ContainerAttach).
> Note that unlike the attach endpoint, the logs endpoint does not
> upgrade the connection and does not set Content-Type.


* New content type : `application/json`

* New content type : `text/plain`

* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

Changed response : **404 Not Found**
> no such container


* New content type : `text/plain`

* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

* Changed content type : `application/json`

Changed response : **500 Internal Server Error**
> server error


* New content type : `application/json`

* New content type : `text/plain`

* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

##### `GET` /services/{id}/logs


###### Return Type:

Changed response : **200 OK**
> logs returned as a stream in response body


* New content type : `application/json`

* New content type : `text/plain`

* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

Changed response : **404 Not Found**
> no such service


* New content type : `text/plain`

* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

* Changed content type : `application/json`

Changed response : **500 Internal Server Error**
> server error


* New content type : `application/json`

* New content type : `text/plain`

* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

Changed response : **503 Service Unavailable**
> node is not part of a swarm


* New content type : `application/json`

* New content type : `text/plain`

* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

##### `GET` /tasks/{id}/logs


###### Return Type:

Changed response : **200 OK**
> logs returned as a stream in response body


* New content type : `application/json`

* New content type : `text/plain`

* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

Changed response : **404 Not Found**
> no such task


* New content type : `text/plain`

* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

* Changed content type : `application/json`

Changed response : **500 Internal Server Error**
> server error


* New content type : `application/json`

* New content type : `text/plain`

* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

Changed response : **503 Service Unavailable**
> node is not part of a swarm


* New content type : `application/json`

* New content type : `text/plain`

* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

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
##### `POST` /containers/{id}/stop


###### Parameters:

Deleted: `signal` in `query`
> Signal to send to the container as an integer or string (e.g. `SIGINT`).


##### `POST` /containers/{id}/restart


###### Parameters:

Deleted: `signal` in `query`
> Signal to send to the container as an integer or string (e.g. `SIGINT`).


##### `POST` /containers/{id}/update


###### Request:

Changed content type : `application/json`

* Added property `KernelMemory` (integer)
    > Kernel memory limit in bytes.
    >
    > <p><br /></p>
    >
    > > **Deprecated**: This field is deprecated as the kernel 5.4 deprecated
    > > `kmem.limit_in_bytes`.


* Changed property `KernelMemoryTCP` (integer)
    > Hard limit for kernel TCP buffer memory (in bytes).


##### `POST` /containers/{id}/attach


###### Return Type:

Changed response : **400 Bad Request**
> bad parameter


* Deleted content type : `application/vnd.docker.multiplexed-stream`

Changed response : **404 Not Found**
> no such container


* Deleted content type : `application/vnd.docker.multiplexed-stream`

Changed response : **500 Internal Server Error**
> server error


* Deleted content type : `application/vnd.docker.multiplexed-stream`

##### `GET` /containers/{id}/attach/ws


###### Parameters:

Deleted: `stdin` in `query`
> Attach to `stdin`


Deleted: `stdout` in `query`
> Attach to `stdout`


Deleted: `stderr` in `query`
> Attach to `stderr`


##### `GET` /images/json


###### Parameters:

Deleted: `shared-size` in `query`
> Compute and show shared size as a `SharedSize` field on each image.


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


###### Parameters:

Changed: `platform` in `query`
> Platform in the format os[/arch[/variant]]


##### `GET` /_ping


###### Return Type:

Changed response : **200 OK**
> no error

Deleted header : `Swarm`

> Contains information about Swarm status of the daemon,
> and if the daemon is acting as a manager or worker node.


Changed header : `Builder-Version`

> Default version of docker image builder


##### `HEAD` /_ping


###### Return Type:

Changed response : **200 OK**
> no error

Deleted header : `Swarm`

> Contains information about Swarm status of the daemon,
> and if the daemon is acting as a manager or worker node.


##### `POST` /containers/{id}/exec


###### Request:

Changed content type : `application/json`

* Deleted property `ConsoleSize` (array)
    > Initial console size, as an `[height, width]` array.


##### `POST` /exec/{id}/start


###### Request:

Changed content type : `application/json`

* Deleted property `ConsoleSize` (array)
    > Initial console size, as an `[height, width]` array.


###### Return Type:

Changed response : **404 Not Found**
> No such exec instance


* Deleted content type : `application/vnd.docker.multiplexed-stream`

Changed response : **409 Conflict**
> Container is stopped or paused


* Deleted content type : `application/vnd.docker.multiplexed-stream`

##### `POST` /volumes/create


###### Request:

Changed content type : `application/json`

* Deleted property `ClusterVolumeSpec` (object)

###### Return Type:

Changed response : **201 Created**
> The volume was created successfully


* Changed content type : `application/json`

    * Deleted property `ClusterVolume` (object)

##### `GET` /volumes/{name}


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    * Deleted property `ClusterVolume` (object)

##### `POST` /volumes/prune


###### Parameters:

Changed: `filters` in `query`
> Filters to process on the prune list, encoded as JSON (a `map[string][]string`).
>
> Available filters:
> - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune volumes with (or without, in case `label!=...` is used) the specified labels.


##### `GET` /volumes


###### Return Type:

Changed response : **200 OK**
> Summary volume data that matches the query


* Changed content type : `application/json`

    * Changed property `Volumes` (array)
        > List of volumes


        Changed items (object):

        * Deleted property `ClusterVolume` (object)

##### `GET` /containers/json


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `Mounts` (array)

        Changed items (object):
            > MountPoint represents a mount point configuration inside the container.
            > This is used for reporting the mountpoints in use by a container.


        * Changed property `Type` (string)
            > The mount type:
            >
            > - `bind` a mount of a file or directory from the host into the container.
            > - `volume` a docker volume with the given `Name`.
            > - `tmpfs` a `tmpfs`.
            > - `npipe` a named pipe from the host into the container.


            Removed enum value:

            * `cluster`
##### `POST` /containers/create


###### Request:

Changed content type : `application/json`

* Changed property `HostConfig` (object)
    > A container's resources (cgroups config, ulimits, etc)


    * Added property `KernelMemory` (integer)
        > Kernel memory limit in bytes.
        >
        > <p><br /></p>
        >
        > > **Deprecated**: This field is deprecated as the kernel 5.4 deprecated
        > > `kmem.limit_in_bytes`.


    * Deleted property `Annotations` (object)
        > Arbitrary non-identifying metadata attached to container and
        > provided to the runtime when the container is started.


    * Changed property `KernelMemoryTCP` (integer)
        > Hard limit for kernel TCP buffer memory (in bytes).


    * Changed property `ConsoleSize` (array)
        > Initial console size, as an `[height, width]` array. (Windows only)


    * Changed property `Mounts` (array)
        > Specification for mounts to be added to the container.


        Changed items (object):

        * Changed property `Type` (string)
            > The mount type. Available types:
            >
            > - `bind` Mounts a file or directory from the host into the container. Must exist prior to creating the container.
            > - `volume` Creates a volume with the given name and options (or uses a pre-existing volume with the same name and options). These are **not** removed when the container is removed.
            > - `tmpfs` Create a tmpfs with the given options. The mount source cannot be specified for tmpfs.
            > - `npipe` Mounts a named pipe from the host into the container. Must exist prior to creating the container.


            Removed enum value:

            * `cluster`
        * Changed property `BindOptions` (object)
            > Optional configuration for the `bind` type.


            * Deleted property `CreateMountpoint` (boolean)
                > Create mount point on host if missing


Changed content type : `application/octet-stream`

* Changed property `HostConfig` (object)
    > A container's resources (cgroups config, ulimits, etc)


    * Added property `KernelMemory` (integer)
        > Kernel memory limit in bytes.
        >
        > <p><br /></p>
        >
        > > **Deprecated**: This field is deprecated as the kernel 5.4 deprecated
        > > `kmem.limit_in_bytes`.


    * Deleted property `Annotations` (object)
        > Arbitrary non-identifying metadata attached to container and
        > provided to the runtime when the container is started.


    * Changed property `KernelMemoryTCP` (integer)
        > Hard limit for kernel TCP buffer memory (in bytes).


    * Changed property `ConsoleSize` (array)
        > Initial console size, as an `[height, width]` array. (Windows only)


    * Changed property `Mounts` (array)
        > Specification for mounts to be added to the container.


        Changed items (object):

        * Changed property `Type` (string)
            > The mount type. Available types:
            >
            > - `bind` Mounts a file or directory from the host into the container. Must exist prior to creating the container.
            > - `volume` Creates a volume with the given name and options (or uses a pre-existing volume with the same name and options). These are **not** removed when the container is removed.
            > - `tmpfs` Create a tmpfs with the given options. The mount source cannot be specified for tmpfs.
            > - `npipe` Mounts a named pipe from the host into the container. Must exist prior to creating the container.


            Removed enum value:

            * `cluster`
        * Changed property `BindOptions` (object)
            > Optional configuration for the `bind` type.


            * Deleted property `CreateMountpoint` (boolean)
                > Create mount point on host if missing


##### `GET` /containers/{id}/json


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Changed property `Mounts` (array)

        Changed items (object):
            > MountPoint represents a mount point configuration inside the container.
            > This is used for reporting the mountpoints in use by a container.


        * Changed property `Type` (string)
            > The mount type:
            >
            > - `bind` a mount of a file or directory from the host into the container.
            > - `volume` a docker volume with the given `Name`.
            > - `tmpfs` a `tmpfs`.
            > - `npipe` a named pipe from the host into the container.


            Removed enum value:

            * `cluster`
    * Changed property `State` (object)
        > ContainerState stores container's running state. It's part of ContainerJSONBase
        > and will be returned by the "inspect" command.


        * Changed property `OOMKilled` (boolean)
            > Whether this container has been killed because it ran out of memory.


    * Changed property `HostConfig` (object)
        > A container's resources (cgroups config, ulimits, etc)


        * Added property `KernelMemory` (integer)
            > Kernel memory limit in bytes.
            >
            > <p><br /></p>
            >
            > > **Deprecated**: This field is deprecated as the kernel 5.4 deprecated
            > > `kmem.limit_in_bytes`.


        * Deleted property `Annotations` (object)
            > Arbitrary non-identifying metadata attached to container and
            > provided to the runtime when the container is started.


        * Changed property `KernelMemoryTCP` (integer)
            > Hard limit for kernel TCP buffer memory (in bytes).


        * Changed property `ConsoleSize` (array)
            > Initial console size, as an `[height, width]` array. (Windows only)


        * Changed property `Mounts` (array)
            > Specification for mounts to be added to the container.


            Changed items (object):

            * Changed property `Type` (string)
                > The mount type. Available types:
                >
                > - `bind` Mounts a file or directory from the host into the container. Must exist prior to creating the container.
                > - `volume` Creates a volume with the given name and options (or uses a pre-existing volume with the same name and options). These are **not** removed when the container is removed.
                > - `tmpfs` Create a tmpfs with the given options. The mount source cannot be specified for tmpfs.
                > - `npipe` Mounts a named pipe from the host into the container. Must exist prior to creating the container.


                Removed enum value:

                * `cluster`
            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Deleted property `CreateMountpoint` (boolean)
                    > Create mount point on host if missing


##### `GET` /images/{name}/json


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

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


##### `GET` /system/df


###### Parameters:

Deleted: `type` in `query`
> Object types, for which to compute and return data.


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


    * Changed property `Volumes` (array)

        Changed items (object):

        * Deleted property `ClusterVolume` (object)

    * Changed property `BuildCache` (array)

        Changed items (object):
            > BuildCache contains information about a build cache record.


        * Deleted property `Parents` (array)
            > List of parent build cache record IDs.


        * Changed property `Parent` (string)
            > ID of the parent build cache record.


    * Changed property `Containers` (array)

        Changed items (object):

        * Changed property `Mounts` (array)

            Changed items (object):
                > MountPoint represents a mount point configuration inside the container.
                > This is used for reporting the mountpoints in use by a container.


            * Changed property `Type` (string)
                > The mount type:
                >
                > - `bind` a mount of a file or directory from the host into the container.
                > - `volume` a docker volume with the given `Name`.
                > - `tmpfs` a `tmpfs`.
                > - `npipe` a named pipe from the host into the container.


                Removed enum value:

                * `cluster`
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


    * Changed property `Volumes` (array)

        Changed items (object):

        * Deleted property `ClusterVolume` (object)

    * Changed property `BuildCache` (array)

        Changed items (object):
            > BuildCache contains information about a build cache record.


        * Deleted property `Parents` (array)
            > List of parent build cache record IDs.


        * Changed property `Parent` (string)
            > ID of the parent build cache record.


    * Changed property `Containers` (array)

        Changed items (object):

        * Changed property `Mounts` (array)

            Changed items (object):
                > MountPoint represents a mount point configuration inside the container.
                > This is used for reporting the mountpoints in use by a container.


            * Changed property `Type` (string)
                > The mount type:
                >
                > - `bind` a mount of a file or directory from the host into the container.
                > - `volume` a docker volume with the given `Name`.
                > - `tmpfs` a `tmpfs`.
                > - `npipe` a named pipe from the host into the container.


                Removed enum value:

                * `cluster`
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


        * Changed property `Mounts` (array)
            > Specification for mounts to be added to containers created as part
            > of the service.


            Changed items (object):

            * Changed property `Type` (string)
                > The mount type. Available types:
                >
                > - `bind` Mounts a file or directory from the host into the container. Must exist prior to creating the container.
                > - `volume` Creates a volume with the given name and options (or uses a pre-existing volume with the same name and options). These are **not** removed when the container is removed.
                > - `tmpfs` Create a tmpfs with the given options. The mount source cannot be specified for tmpfs.
                > - `npipe` Mounts a named pipe from the host into the container. Must exist prior to creating the container.


                Removed enum value:

                * `cluster`
            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Deleted property `CreateMountpoint` (boolean)
                    > Create mount point on host if missing


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


        * Changed property `Mounts` (array)
            > Specification for mounts to be added to containers created as part
            > of the service.


            Changed items (object):

            * Changed property `Type` (string)
                > The mount type. Available types:
                >
                > - `bind` Mounts a file or directory from the host into the container. Must exist prior to creating the container.
                > - `volume` Creates a volume with the given name and options (or uses a pre-existing volume with the same name and options). These are **not** removed when the container is removed.
                > - `tmpfs` Create a tmpfs with the given options. The mount source cannot be specified for tmpfs.
                > - `npipe` Mounts a named pipe from the host into the container. Must exist prior to creating the container.


                Removed enum value:

                * `cluster`
            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Deleted property `CreateMountpoint` (boolean)
                    > Create mount point on host if missing


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


            * Changed property `Mounts` (array)
                > Specification for mounts to be added to containers created as part
                > of the service.


                Changed items (object):

                * Changed property `Type` (string)
                    > The mount type. Available types:
                    >
                    > - `bind` Mounts a file or directory from the host into the container. Must exist prior to creating the container.
                    > - `volume` Creates a volume with the given name and options (or uses a pre-existing volume with the same name and options). These are **not** removed when the container is removed.
                    > - `tmpfs` Create a tmpfs with the given options. The mount source cannot be specified for tmpfs.
                    > - `npipe` Mounts a named pipe from the host into the container. Must exist prior to creating the container.


                    Removed enum value:

                    * `cluster`
                * Changed property `BindOptions` (object)
                    > Optional configuration for the `bind` type.


                    * Deleted property `CreateMountpoint` (boolean)
                        > Create mount point on host if missing


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


            * Changed property `Mounts` (array)
                > Specification for mounts to be added to containers created as part
                > of the service.


                Changed items (object):

                * Changed property `Type` (string)
                    > The mount type. Available types:
                    >
                    > - `bind` Mounts a file or directory from the host into the container. Must exist prior to creating the container.
                    > - `volume` Creates a volume with the given name and options (or uses a pre-existing volume with the same name and options). These are **not** removed when the container is removed.
                    > - `tmpfs` Create a tmpfs with the given options. The mount source cannot be specified for tmpfs.
                    > - `npipe` Mounts a named pipe from the host into the container. Must exist prior to creating the container.


                    Removed enum value:

                    * `cluster`
                * Changed property `BindOptions` (object)
                    > Optional configuration for the `bind` type.


                    * Deleted property `CreateMountpoint` (boolean)
                        > Create mount point on host if missing


##### `GET` /info


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    * Added property `KernelMemory` (boolean)
        > Indicates if the host has kernel memory limit support enabled.
        >
        > <p><br /></p>
        >
        > > **Deprecated**: This field is deprecated as the kernel 5.4 deprecated
        > > `kmem.limit_in_bytes`.


    * Added property `ClusterStore` (string)
        > URL of the distributed storage backend.
        >
        >
        > The storage backend is used for multihost networking (to store
        > network and endpoint information) and by the node discovery mechanism.
        >
        > <p><br /></p>
        >
        > > **Deprecated**: This field is only propagated when using standalone Swarm
        > > mode, and overlay networking using an external k/v store. Overlay
        > > networks with Swarm mode enabled use the built-in raft store, and
        > > this field will be empty.


    * Added property `ClusterAdvertise` (string)
        > The network endpoint that the Engine advertises for the purpose of
        > node discovery. ClusterAdvertise is a `host:port` combination on which
        > the daemon is reachable by other hosts.
        >
        > <p><br /></p>
        >
        > > **Deprecated**: This field is only propagated when using standalone Swarm
        > > mode, and overlay networking using an external k/v store. Overlay
        > > networks with Swarm mode enabled use the built-in raft store, and
        > > this field will be empty.


    * Changed property `KernelMemoryTCP` (boolean)
        > Indicates if the host has kernel memory TCP limit support enabled.
        >
        > Kernel memory TCP limits are not supported when using cgroups v2, which
        > does not support the corresponding `memory.kmem.tcp.limit_in_bytes` cgroup.


    * Changed property `SecurityOptions` (array)
        > List of security features that are enabled on the daemon, such as
        > apparmor, seccomp, SELinux, user-namespaces (userns), and rootless.
        >
        > Additional configuration options for each security feature may
        > be present, and are included as a comma-separated list of key/value
        > pairs.


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


                * Changed property `Mounts` (array)
                    > Specification for mounts to be added to containers created as part
                    > of the service.


                    Changed items (object):

                    * Changed property `Type` (string)
                        > The mount type. Available types:
                        >
                        > - `bind` Mounts a file or directory from the host into the container. Must exist prior to creating the container.
                        > - `volume` Creates a volume with the given name and options (or uses a pre-existing volume with the same name and options). These are **not** removed when the container is removed.
                        > - `tmpfs` Create a tmpfs with the given options. The mount source cannot be specified for tmpfs.
                        > - `npipe` Mounts a named pipe from the host into the container. Must exist prior to creating the container.


                        Removed enum value:

                        * `cluster`
                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Deleted property `CreateMountpoint` (boolean)
                            > Create mount point on host if missing


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


                * Changed property `Mounts` (array)
                    > Specification for mounts to be added to containers created as part
                    > of the service.


                    Changed items (object):

                    * Changed property `Type` (string)
                        > The mount type. Available types:
                        >
                        > - `bind` Mounts a file or directory from the host into the container. Must exist prior to creating the container.
                        > - `volume` Creates a volume with the given name and options (or uses a pre-existing volume with the same name and options). These are **not** removed when the container is removed.
                        > - `tmpfs` Create a tmpfs with the given options. The mount source cannot be specified for tmpfs.
                        > - `npipe` Mounts a named pipe from the host into the container. Must exist prior to creating the container.


                        Removed enum value:

                        * `cluster`
                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Deleted property `CreateMountpoint` (boolean)
                            > Create mount point on host if missing


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


                * Changed property `Mounts` (array)
                    > Specification for mounts to be added to containers created as part
                    > of the service.


                    Changed items (object):

                    * Changed property `Type` (string)
                        > The mount type. Available types:
                        >
                        > - `bind` Mounts a file or directory from the host into the container. Must exist prior to creating the container.
                        > - `volume` Creates a volume with the given name and options (or uses a pre-existing volume with the same name and options). These are **not** removed when the container is removed.
                        > - `tmpfs` Create a tmpfs with the given options. The mount source cannot be specified for tmpfs.
                        > - `npipe` Mounts a named pipe from the host into the container. Must exist prior to creating the container.


                        Removed enum value:

                        * `cluster`
                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Deleted property `CreateMountpoint` (boolean)
                            > Create mount point on host if missing


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


                * Changed property `Mounts` (array)
                    > Specification for mounts to be added to containers created as part
                    > of the service.


                    Changed items (object):

                    * Changed property `Type` (string)
                        > The mount type. Available types:
                        >
                        > - `bind` Mounts a file or directory from the host into the container. Must exist prior to creating the container.
                        > - `volume` Creates a volume with the given name and options (or uses a pre-existing volume with the same name and options). These are **not** removed when the container is removed.
                        > - `tmpfs` Create a tmpfs with the given options. The mount source cannot be specified for tmpfs.
                        > - `npipe` Mounts a named pipe from the host into the container. Must exist prior to creating the container.


                        Removed enum value:

                        * `cluster`
                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Deleted property `CreateMountpoint` (boolean)
                            > Create mount point on host if missing

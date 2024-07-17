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
##### `GET` /containers/{id}/stats


###### Parameters:

Deleted: `one-shot` in `query`
> Only get a single stat instead of waiting for 2 cycles. Must be used
> with `stream=false`.


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


##### `POST` /networks/create


###### Request:

Changed content type : `application/json`

* Deleted property `Scope` (string)
    > The level at which the network exists (e.g. `swarm` for cluster-wide
    > or `local` for machine level).


* Deleted property `ConfigOnly` (boolean)
    > Creates a config-only network. Config-only networks are placeholder
    > networks for network configurations to be used by other networks.
    > Config-only networks cannot be used directly to run containers
    > or services.


* Deleted property `ConfigFrom` (object)

* Changed property `IPAM` (object)

    * Changed property `Config` (array)
        > List of IPAM configuration options, specified as a map:
        > 
        > ```
        > {"Subnet": <CIDR>, "IPRange": <CIDR>, "Gateway": <IP address>, "AuxAddress": <device_name:IP address>}
        > ```


        Changed items (object):

        * Deleted property `Subnet` (string)

        * Deleted property `IPRange` (string)

        * Deleted property `Gateway` (string)

        * Deleted property `AuxiliaryAddresses` (object)

##### `GET` /events


##### `GET` /volumes


###### Return Type:

Changed response : **200 OK**
> Summary volume data that matches the query


* Changed content type : `application/json`

    * Changed property `Volumes` (array)
        > List of volumes


        Changed items (object):

        * Deleted property `ClusterVolume` (object)

##### `GET` /networks


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    Changed items (object):

    * Deleted property `ConfigFrom` (object)

    * Deleted property `ConfigOnly` (boolean)
        > Whether the network is a config-only network. Config-only networks are
        > placeholder networks for network configurations to be used by other
        > networks. Config-only networks cannot be used directly to run containers
        > or services.


    * Deleted property `Peers` (array)
        > List of peer nodes for an overlay network. This field is only present
        > for overlay networks, and omitted for other network types.


    * Changed property `Name` (string)

    * Changed property `Id` (string)

    * Changed property `Created` (string)

    * Changed property `Scope` (string)

    * Changed property `Driver` (string)

    * Changed property `EnableIPv6` (boolean)

    * Changed property `Internal` (boolean)

    * Changed property `Attachable` (boolean)

    * Changed property `Ingress` (boolean)

    * Changed property `Options` (object)

    * Changed property `Labels` (object)

    * Changed property `IPAM` (object)

        * Changed property `Config` (array)
            > List of IPAM configuration options, specified as a map:
            > 
            > ```
            > {"Subnet": <CIDR>, "IPRange": <CIDR>, "Gateway": <IP address>, "AuxAddress": <device_name:IP address>}
            > ```


            Changed items (object):

            * Deleted property `Subnet` (string)

            * Deleted property `IPRange` (string)

            * Deleted property `Gateway` (string)

            * Deleted property `AuxiliaryAddresses` (object)

    * Changed property `Containers` (object)

##### `GET` /networks/{id}


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    * Deleted property `ConfigFrom` (object)

    * Deleted property `ConfigOnly` (boolean)
        > Whether the network is a config-only network. Config-only networks are
        > placeholder networks for network configurations to be used by other
        > networks. Config-only networks cannot be used directly to run containers
        > or services.


    * Deleted property `Peers` (array)
        > List of peer nodes for an overlay network. This field is only present
        > for overlay networks, and omitted for other network types.


    * Changed property `Name` (string)

    * Changed property `Id` (string)

    * Changed property `Created` (string)

    * Changed property `Scope` (string)

    * Changed property `Driver` (string)

    * Changed property `EnableIPv6` (boolean)

    * Changed property `Internal` (boolean)

    * Changed property `Attachable` (boolean)

    * Changed property `Ingress` (boolean)

    * Changed property `Options` (object)

    * Changed property `Labels` (object)

    * Changed property `IPAM` (object)

        * Changed property `Config` (array)
            > List of IPAM configuration options, specified as a map:
            > 
            > ```
            > {"Subnet": <CIDR>, "IPRange": <CIDR>, "Gateway": <IP address>, "AuxAddress": <device_name:IP address>}
            > ```


            Changed items (object):

            * Deleted property `Subnet` (string)

            * Deleted property `IPRange` (string)

            * Deleted property `Gateway` (string)

            * Deleted property `AuxiliaryAddresses` (object)

    * Changed property `Containers` (object)

##### `POST` /services/create


###### Request:

Changed content type : `application/json`

* Changed property `Mode` (object)
    > Scheduling mode for the service.


    * Deleted property `ReplicatedJob` (object)
        > The mode used for services with a finite number of tasks that run
        > to a completed state.


    * Deleted property `GlobalJob` (object)
        > The mode used for services which run a task to the completed state
        > on each valid node.


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


        * Deleted property `CapabilityAdd` (array)
            > A list of kernel capabilities to add to the default set
            > for the container.


        * Deleted property `CapabilityDrop` (array)
            > A list of kernel capabilities to drop from the default set
            > for the container.


        * Deleted property `Ulimits` (array)
            > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


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


    * Changed property `Resources` (object)
        > Resource requirements which apply to each individual container created
        > as part of the service.


        * Changed property `Limits` (object)
            > An object describing the resources which can be advertised by a node and
            > requested by a task.


            * Added property `GenericResources` (array)
                > User-defined resources can be either Integer resources (e.g, `SSD=3`) or
                > String resources (e.g, `GPU=UUID1`).


                Items (object):

                * Property `NamedResourceSpec` (object)

                    * Property `Kind` (string)

                    * Property `Value` (string)

                * Property `DiscreteResourceSpec` (object)

                    * Property `Kind` (string)

                    * Property `Value` (integer)

            * Deleted property `Pids` (integer)
                > Limits the maximum number of PIDs in the container. Set `0` for unlimited.


##### `POST` /services/{id}/update


###### Request:

Changed content type : `application/json`

* Changed property `Mode` (object)
    > Scheduling mode for the service.


    * Deleted property `ReplicatedJob` (object)
        > The mode used for services with a finite number of tasks that run
        > to a completed state.


    * Deleted property `GlobalJob` (object)
        > The mode used for services which run a task to the completed state
        > on each valid node.


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


        * Deleted property `CapabilityAdd` (array)
            > A list of kernel capabilities to add to the default set
            > for the container.


        * Deleted property `CapabilityDrop` (array)
            > A list of kernel capabilities to drop from the default set
            > for the container.


        * Deleted property `Ulimits` (array)
            > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


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


    * Changed property `Resources` (object)
        > Resource requirements which apply to each individual container created
        > as part of the service.


        * Changed property `Limits` (object)
            > An object describing the resources which can be advertised by a node and
            > requested by a task.


            * Added property `GenericResources` (array)
                > User-defined resources can be either Integer resources (e.g, `SSD=3`) or
                > String resources (e.g, `GPU=UUID1`).


            * Deleted property `Pids` (integer)
                > Limits the maximum number of PIDs in the container. Set `0` for unlimited.


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


###### Parameters:

Deleted: `platform` in `query`
> Platform in the format `os[/arch[/variant]]` used for image lookup.
> 
> When specified, the daemon checks if the requested image is present
> in the local image cache with the given OS and Architecture, and
> otherwise returns a `404` status.
> 
> If the option is not set, the host's native OS and Architecture are
> used to look up the image in the image cache. However, if no platform
> is passed and the given image does exist in the local image cache,
> but its OS or architecture does not match, the container is created
> with the available image, and a warning is added to the `Warnings`
> field in the response, for example;
> 
>     WARNING: The requested image's platform (linux/arm64/v8) does not
>              match the detected host platform (linux/amd64) and no
>              specific platform was requested


###### Request:

Changed content type : `application/json`

* Changed property `HostConfig` (object)
    > A container's resources (cgroups config, ulimits, etc)


    * Added property `KernelMemory` (integer)
        > Kernel memory limit in bytes.


    * Added property `Capabilities` (array)
        > A list of kernel capabilities to be available for container (this
        > overrides the default set).
        > 
        > Conflicts with options 'CapAdd' and 'CapDrop'"


        Items (string):

    * Deleted property `Annotations` (object)
        > Arbitrary non-identifying metadata attached to container and
        > provided to the runtime when the container is started.


    * Deleted property `CgroupnsMode` (string)
        > cgroup namespace mode for the container. Possible values are:
        > 
        > - `"private"`: the container runs in its own private cgroup namespace
        > - `"host"`: use the host system's cgroup namespace
        > 
        > If not specified, the daemon default is used, which can either be `"private"`
        > or `"host"`, depending on daemon version, kernel support and configuration.


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


    * Added property `Capabilities` (array)
        > A list of kernel capabilities to be available for container (this
        > overrides the default set).
        > 
        > Conflicts with options 'CapAdd' and 'CapDrop'"


    * Deleted property `Annotations` (object)
        > Arbitrary non-identifying metadata attached to container and
        > provided to the runtime when the container is started.


    * Deleted property `CgroupnsMode` (string)
        > cgroup namespace mode for the container. Possible values are:
        > 
        > - `"private"`: the container runs in its own private cgroup namespace
        > - `"host"`: use the host system's cgroup namespace
        > 
        > If not specified, the daemon default is used, which can either be `"private"`
        > or `"host"`, depending on daemon version, kernel support and configuration.


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


        * Added property `Capabilities` (array)
            > A list of kernel capabilities to be available for container (this
            > overrides the default set).
            > 
            > Conflicts with options 'CapAdd' and 'CapDrop'"


        * Deleted property `Annotations` (object)
            > Arbitrary non-identifying metadata attached to container and
            > provided to the runtime when the container is started.


        * Deleted property `CgroupnsMode` (string)
            > cgroup namespace mode for the container. Possible values are:
            > 
            > - `"private"`: the container runs in its own private cgroup namespace
            > - `"host"`: use the host system's cgroup namespace
            > 
            > If not specified, the daemon default is used, which can either be `"private"`
            > or `"host"`, depending on daemon version, kernel support and configuration.


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
##### `GET` /tasks


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    Changed items (object):

    * Deleted property `JobIteration` (object)
        > The version number of the object such as node, service, etc. This is needed
        > to avoid conflicting writes. The client must send the version number along
        > with the modified specification when updating these objects.
        > 
        > This approach ensures safe concurrency and determinism in that the change
        > on the object may not be applied if the version number has changed from the
        > last read. In other words, if two update requests specify the same base
        > version, only one of the requests can succeed. As a result, two separate
        > update requests that happen at the same time will not unintentionally
        > overwrite each other.


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


            * Deleted property `CapabilityAdd` (array)
                > A list of kernel capabilities to add to the default set
                > for the container.


            * Deleted property `CapabilityDrop` (array)
                > A list of kernel capabilities to drop from the default set
                > for the container.


            * Deleted property `Ulimits` (array)
                > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


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


        * Changed property `Resources` (object)
            > Resource requirements which apply to each individual container created
            > as part of the service.


            * Changed property `Limits` (object)
                > An object describing the resources which can be advertised by a node and
                > requested by a task.


                * Added property `GenericResources` (array)
                    > User-defined resources can be either Integer resources (e.g, `SSD=3`) or
                    > String resources (e.g, `GPU=UUID1`).


                * Deleted property `Pids` (integer)
                    > Limits the maximum number of PIDs in the container. Set `0` for unlimited.


##### `GET` /tasks/{id}


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Deleted property `JobIteration` (object)
        > The version number of the object such as node, service, etc. This is needed
        > to avoid conflicting writes. The client must send the version number along
        > with the modified specification when updating these objects.
        > 
        > This approach ensures safe concurrency and determinism in that the change
        > on the object may not be applied if the version number has changed from the
        > last read. In other words, if two update requests specify the same base
        > version, only one of the requests can succeed. As a result, two separate
        > update requests that happen at the same time will not unintentionally
        > overwrite each other.


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


            * Deleted property `CapabilityAdd` (array)
                > A list of kernel capabilities to add to the default set
                > for the container.


            * Deleted property `CapabilityDrop` (array)
                > A list of kernel capabilities to drop from the default set
                > for the container.


            * Deleted property `Ulimits` (array)
                > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


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


        * Changed property `Resources` (object)
            > Resource requirements which apply to each individual container created
            > as part of the service.


            * Changed property `Limits` (object)
                > An object describing the resources which can be advertised by a node and
                > requested by a task.


                * Added property `GenericResources` (array)
                    > User-defined resources can be either Integer resources (e.g, `SSD=3`) or
                    > String resources (e.g, `GPU=UUID1`).


                * Deleted property `Pids` (integer)
                    > Limits the maximum number of PIDs in the container. Set `0` for unlimited.


##### `GET` /info


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    * Added property `SystemStatus` (array)
        > Status information about this node (standalone Swarm API).
        > 
        > <p><br /></p>
        > 
        > > **Note**: The information returned in this field is only propagated
        > > by the Swarm standalone API, and is empty (`null`) when using
        > > built-in swarm mode.


        Items (array):

        Items (string):

    * Added property `KernelMemory` (boolean)
        > Indicates if the host has kernel memory limit support enabled.


    * Added property `ClusterStore` (string)
        > URL of the distributed storage backend.
        > 
        > 
        > The storage backend is used for multihost networking (to store
        > network and endpoint information) and by the node discovery mechanism.
        > 
        > <p><br /></p>
        > 
        > > **Note**: This field is only propagated when using standalone Swarm
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
        > > **Note**: This field is only propagated when using standalone Swarm
        > > mode, and overlay networking using an external k/v store. Overlay
        > > networks with Swarm mode enabled use the built-in raft store, and
        > > this field will be empty.


    * Deleted property `CgroupVersion` (string)
        > The version of the cgroup.


    * Deleted property `OSVersion` (string)
        > Version of the host's operating system
        > 
        > <p><br /></p>
        > 
        > > **Note**: The information returned in this field, including its
        > > very existence, and the formatting of values, should not be considered
        > > stable, and may change without notice.


    * Deleted property `DefaultAddressPools` (array)
        > List of custom default address pools for local networks, which can be
        > specified in the daemon.json file or dockerd option.
        > 
        > Example: a Base "10.10.0.0/16" with Size 24 will define the set of 256
        > 10.10.[0-255].0/24 address pools.


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


###### Parameters:

Deleted: `status` in `query`
> Include service status, with count of running and desired tasks.


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    Changed items (object):

    * Deleted property `ServiceStatus` (object)
        > The status of the service's tasks. Provided only when requested as
        > part of a ServiceList operation.


    * Deleted property `JobStatus` (object)
        > The status of the service when it is in one of ReplicatedJob or
        > GlobalJob modes. Absent on Replicated and Global mode services. The
        > JobIteration is an ObjectVersion, but unlike the Service's version,
        > does not need to be sent with an update request.


    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


        * Changed property `Mode` (object)
            > Scheduling mode for the service.


            * Deleted property `ReplicatedJob` (object)
                > The mode used for services with a finite number of tasks that run
                > to a completed state.


            * Deleted property `GlobalJob` (object)
                > The mode used for services which run a task to the completed state
                > on each valid node.


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


                * Deleted property `CapabilityAdd` (array)
                    > A list of kernel capabilities to add to the default set
                    > for the container.


                * Deleted property `CapabilityDrop` (array)
                    > A list of kernel capabilities to drop from the default set
                    > for the container.


                * Deleted property `Ulimits` (array)
                    > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


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


            * Changed property `Resources` (object)
                > Resource requirements which apply to each individual container created
                > as part of the service.


                * Changed property `Limits` (object)
                    > An object describing the resources which can be advertised by a node and
                    > requested by a task.


                    * Added property `GenericResources` (array)
                        > User-defined resources can be either Integer resources (e.g, `SSD=3`) or
                        > String resources (e.g, `GPU=UUID1`).


                    * Deleted property `Pids` (integer)
                        > Limits the maximum number of PIDs in the container. Set `0` for unlimited.


* Changed content type : `text/plain`

    Changed items (object):

    * Deleted property `ServiceStatus` (object)
        > The status of the service's tasks. Provided only when requested as
        > part of a ServiceList operation.


    * Deleted property `JobStatus` (object)
        > The status of the service when it is in one of ReplicatedJob or
        > GlobalJob modes. Absent on Replicated and Global mode services. The
        > JobIteration is an ObjectVersion, but unlike the Service's version,
        > does not need to be sent with an update request.


    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


        * Changed property `Mode` (object)
            > Scheduling mode for the service.


            * Deleted property `ReplicatedJob` (object)
                > The mode used for services with a finite number of tasks that run
                > to a completed state.


            * Deleted property `GlobalJob` (object)
                > The mode used for services which run a task to the completed state
                > on each valid node.


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


                * Deleted property `CapabilityAdd` (array)
                    > A list of kernel capabilities to add to the default set
                    > for the container.


                * Deleted property `CapabilityDrop` (array)
                    > A list of kernel capabilities to drop from the default set
                    > for the container.


                * Deleted property `Ulimits` (array)
                    > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


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


            * Changed property `Resources` (object)
                > Resource requirements which apply to each individual container created
                > as part of the service.


                * Changed property `Limits` (object)
                    > An object describing the resources which can be advertised by a node and
                    > requested by a task.


                    * Added property `GenericResources` (array)
                        > User-defined resources can be either Integer resources (e.g, `SSD=3`) or
                        > String resources (e.g, `GPU=UUID1`).


                    * Deleted property `Pids` (integer)
                        > Limits the maximum number of PIDs in the container. Set `0` for unlimited.


##### `GET` /services/{id}


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Deleted property `ServiceStatus` (object)
        > The status of the service's tasks. Provided only when requested as
        > part of a ServiceList operation.


    * Deleted property `JobStatus` (object)
        > The status of the service when it is in one of ReplicatedJob or
        > GlobalJob modes. Absent on Replicated and Global mode services. The
        > JobIteration is an ObjectVersion, but unlike the Service's version,
        > does not need to be sent with an update request.


    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


        * Changed property `Mode` (object)
            > Scheduling mode for the service.


            * Deleted property `ReplicatedJob` (object)
                > The mode used for services with a finite number of tasks that run
                > to a completed state.


            * Deleted property `GlobalJob` (object)
                > The mode used for services which run a task to the completed state
                > on each valid node.


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


                * Deleted property `CapabilityAdd` (array)
                    > A list of kernel capabilities to add to the default set
                    > for the container.


                * Deleted property `CapabilityDrop` (array)
                    > A list of kernel capabilities to drop from the default set
                    > for the container.


                * Deleted property `Ulimits` (array)
                    > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


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


            * Changed property `Resources` (object)
                > Resource requirements which apply to each individual container created
                > as part of the service.


                * Changed property `Limits` (object)
                    > An object describing the resources which can be advertised by a node and
                    > requested by a task.


                    * Added property `GenericResources` (array)
                        > User-defined resources can be either Integer resources (e.g, `SSD=3`) or
                        > String resources (e.g, `GPU=UUID1`).


                    * Deleted property `Pids` (integer)
                        > Limits the maximum number of PIDs in the container. Set `0` for unlimited.


* Changed content type : `text/plain`

    * Deleted property `ServiceStatus` (object)
        > The status of the service's tasks. Provided only when requested as
        > part of a ServiceList operation.


    * Deleted property `JobStatus` (object)
        > The status of the service when it is in one of ReplicatedJob or
        > GlobalJob modes. Absent on Replicated and Global mode services. The
        > JobIteration is an ObjectVersion, but unlike the Service's version,
        > does not need to be sent with an update request.


    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


        * Changed property `Mode` (object)
            > Scheduling mode for the service.


            * Deleted property `ReplicatedJob` (object)
                > The mode used for services with a finite number of tasks that run
                > to a completed state.


            * Deleted property `GlobalJob` (object)
                > The mode used for services which run a task to the completed state
                > on each valid node.


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


                * Deleted property `CapabilityAdd` (array)
                    > A list of kernel capabilities to add to the default set
                    > for the container.


                * Deleted property `CapabilityDrop` (array)
                    > A list of kernel capabilities to drop from the default set
                    > for the container.


                * Deleted property `Ulimits` (array)
                    > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


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


            * Changed property `Resources` (object)
                > Resource requirements which apply to each individual container created
                > as part of the service.


                * Changed property `Limits` (object)
                    > An object describing the resources which can be advertised by a node and
                    > requested by a task.


                    * Added property `GenericResources` (array)
                        > User-defined resources can be either Integer resources (e.g, `SSD=3`) or
                        > String resources (e.g, `GPU=UUID1`).


                    * Deleted property `Pids` (integer)
                        > Limits the maximum number of PIDs in the container. Set `0` for unlimited.



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


###### Parameters:

Changed: `platform` in `query`
> Platform in the format os[/arch[/variant]]


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

* Changed property `CheckDuplicate` (boolean)
    > Check for networks with duplicate names. Since Network is
    > primarily keyed based on a random ID and not on the name, and
    > network name is strictly a user-friendly alias to the network
    > which is uniquely identified using ID, there is no guaranteed
    > way to check for duplicates. CheckDuplicate is there to provide
    > a best effort checking of any networks which has the same name
    > but it is not guaranteed to catch all name collisions.


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

###### Return Type:

Changed response : **403 Forbidden**
> operation not supported for pre-defined networks

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


        * Deleted property `CapabilityAdd` (array)
            > A list of kernel capabilities to add to the default set
            > for the container.


        * Deleted property `CapabilityDrop` (array)
            > A list of kernel capabilities to drop from the default set
            > for the container.


        * Deleted property `Ulimits` (array)
            > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


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


        * Changed property `HealthCheck` (object)
            > A test to perform to check that the container is healthy.


            * Deleted property `StartInterval` (integer)
                > The time to wait between checks in nanoseconds during the start period.
                > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


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

* Changed property `Mode` (object)
    > Scheduling mode for the service.


    * Deleted property `ReplicatedJob` (object)
        > The mode used for services with a finite number of tasks that run
        > to a completed state.


    * Deleted property `GlobalJob` (object)
        > The mode used for services which run a task to the completed state
        > on each valid node.


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


        * Deleted property `CapabilityAdd` (array)
            > A list of kernel capabilities to add to the default set
            > for the container.


        * Deleted property `CapabilityDrop` (array)
            > A list of kernel capabilities to drop from the default set
            > for the container.


        * Deleted property `Ulimits` (array)
            > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


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


        * Changed property `HealthCheck` (object)
            > A test to perform to check that the container is healthy.


            * Deleted property `StartInterval` (integer)
                > The time to wait between checks in nanoseconds during the start period.
                > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


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
    * Changed property `NetworkSettings` (object)
        > A summary of the container's network settings


        * Changed property `Networks` (object)

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

* Changed property `MacAddress` (string)
    > MAC address of the container.


* Changed property `Healthcheck` (object)
    > A test to perform to check that the container is healthy.


    * Deleted property `StartInterval` (integer)
        > The time to wait between checks in nanoseconds during the start period.
        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


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


        * Changed property `MacAddress` (string)
            > MAC address of the container.
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
        * Changed property `NetworkSettings` (object)
            > A summary of the container's network settings


            * Changed property `Networks` (object)

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


            * Deleted property `CapabilityAdd` (array)
                > A list of kernel capabilities to add to the default set
                > for the container.


            * Deleted property `CapabilityDrop` (array)
                > A list of kernel capabilities to drop from the default set
                > for the container.


            * Deleted property `Ulimits` (array)
                > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


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


            * Changed property `HealthCheck` (object)
                > A test to perform to check that the container is healthy.


                * Deleted property `StartInterval` (integer)
                    > The time to wait between checks in nanoseconds during the start period.
                    > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


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


            * Deleted property `CapabilityAdd` (array)
                > A list of kernel capabilities to add to the default set
                > for the container.


            * Deleted property `CapabilityDrop` (array)
                > A list of kernel capabilities to drop from the default set
                > for the container.


            * Deleted property `Ulimits` (array)
                > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


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


            * Changed property `HealthCheck` (object)
                > A test to perform to check that the container is healthy.


                * Deleted property `StartInterval` (integer)
                    > The time to wait between checks in nanoseconds during the start period.
                    > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


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


                * Deleted property `CapabilityAdd` (array)
                    > A list of kernel capabilities to add to the default set
                    > for the container.


                * Deleted property `CapabilityDrop` (array)
                    > A list of kernel capabilities to drop from the default set
                    > for the container.


                * Deleted property `Ulimits` (array)
                    > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


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


                * Changed property `HealthCheck` (object)
                    > A test to perform to check that the container is healthy.


                    * Deleted property `StartInterval` (integer)
                        > The time to wait between checks in nanoseconds during the start period.
                        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


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


                * Deleted property `CapabilityAdd` (array)
                    > A list of kernel capabilities to add to the default set
                    > for the container.


                * Deleted property `CapabilityDrop` (array)
                    > A list of kernel capabilities to drop from the default set
                    > for the container.


                * Deleted property `Ulimits` (array)
                    > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


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


                * Changed property `HealthCheck` (object)
                    > A test to perform to check that the container is healthy.


                    * Deleted property `StartInterval` (integer)
                        > The time to wait between checks in nanoseconds during the start period.
                        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


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


                * Deleted property `CapabilityAdd` (array)
                    > A list of kernel capabilities to add to the default set
                    > for the container.


                * Deleted property `CapabilityDrop` (array)
                    > A list of kernel capabilities to drop from the default set
                    > for the container.


                * Deleted property `Ulimits` (array)
                    > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


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


                * Changed property `HealthCheck` (object)
                    > A test to perform to check that the container is healthy.


                    * Deleted property `StartInterval` (integer)
                        > The time to wait between checks in nanoseconds during the start period.
                        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


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


                * Deleted property `CapabilityAdd` (array)
                    > A list of kernel capabilities to add to the default set
                    > for the container.


                * Deleted property `CapabilityDrop` (array)
                    > A list of kernel capabilities to drop from the default set
                    > for the container.


                * Deleted property `Ulimits` (array)
                    > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


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


                * Changed property `HealthCheck` (object)
                    > A test to perform to check that the container is healthy.


                    * Deleted property `StartInterval` (integer)
                        > The time to wait between checks in nanoseconds during the start period.
                        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


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

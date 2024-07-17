#### What's New
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


* New content type : `application/vnd.docker.raw-stream`

* New content type : `application/vnd.docker.multiplexed-stream`

* Deleted content type : `application/json`

* Deleted content type : `text/plain`

Changed response : **404 Not Found**
> no such container


* New content type : `application/vnd.docker.raw-stream`

* New content type : `application/vnd.docker.multiplexed-stream`

* Deleted content type : `text/plain`

* Changed content type : `application/json`

Changed response : **500 Internal Server Error**
> server error


* New content type : `application/vnd.docker.raw-stream`

* New content type : `application/vnd.docker.multiplexed-stream`

* Deleted content type : `application/json`

* Deleted content type : `text/plain`

##### `GET` /services/{id}/logs


###### Return Type:

Changed response : **200 OK**
> logs returned as a stream in response body


* New content type : `application/vnd.docker.raw-stream`

* New content type : `application/vnd.docker.multiplexed-stream`

* Deleted content type : `application/json`

* Deleted content type : `text/plain`

Changed response : **404 Not Found**
> no such service


* New content type : `application/vnd.docker.raw-stream`

* New content type : `application/vnd.docker.multiplexed-stream`

* Deleted content type : `text/plain`

* Changed content type : `application/json`

Changed response : **500 Internal Server Error**
> server error


* New content type : `application/vnd.docker.raw-stream`

* New content type : `application/vnd.docker.multiplexed-stream`

* Deleted content type : `application/json`

* Deleted content type : `text/plain`

Changed response : **503 Service Unavailable**
> node is not part of a swarm


* New content type : `application/vnd.docker.raw-stream`

* New content type : `application/vnd.docker.multiplexed-stream`

* Deleted content type : `application/json`

* Deleted content type : `text/plain`

##### `GET` /tasks/{id}/logs


###### Return Type:

Changed response : **200 OK**
> logs returned as a stream in response body


* New content type : `application/vnd.docker.raw-stream`

* New content type : `application/vnd.docker.multiplexed-stream`

* Deleted content type : `application/json`

* Deleted content type : `text/plain`

Changed response : **404 Not Found**
> no such task


* New content type : `application/vnd.docker.raw-stream`

* New content type : `application/vnd.docker.multiplexed-stream`

* Deleted content type : `text/plain`

* Changed content type : `application/json`

Changed response : **500 Internal Server Error**
> server error


* New content type : `application/vnd.docker.raw-stream`

* New content type : `application/vnd.docker.multiplexed-stream`

* Deleted content type : `application/json`

* Deleted content type : `text/plain`

Changed response : **503 Service Unavailable**
> node is not part of a swarm


* New content type : `application/vnd.docker.raw-stream`

* New content type : `application/vnd.docker.multiplexed-stream`

* Deleted content type : `application/json`

* Deleted content type : `text/plain`

##### `GET` /containers/{id}/changes


###### Return Type:

Changed response : **200 OK**
> The list of changes


* Changed content type : `application/json`

    Changed items (object):
        > Change in the container's filesystem.


    * Changed property `Path` (string)
        > Path to file or directory that has changed.


    * Changed property `Kind` (integer)
        > Kind of change
        > 
        > Can be one of:
        > 
        > - `0`: Modified ("C")
        > - `1`: Added ("A")
        > - `2`: Deleted ("D")


        Added enum values:

        * `0`
        * `1`
        * `2`
##### `GET` /containers/{id}/stats


###### Parameters:

Added: `one-shot` in `query`
> Only get a single stat instead of waiting for 2 cycles. Must be used
> with `stream=false`.


##### `POST` /containers/{id}/stop


###### Parameters:

Added: `signal` in `query`
> Signal to send to the container as an integer or string (e.g. `SIGINT`).


##### `POST` /containers/{id}/restart


###### Parameters:

Added: `signal` in `query`
> Signal to send to the container as an integer or string (e.g. `SIGINT`).


##### `POST` /containers/{id}/update


###### Request:

Changed content type : `application/json`

* Deleted property `KernelMemory` (integer)
    > Kernel memory limit in bytes.


* Changed property `KernelMemoryTCP` (integer)
    > Hard limit for kernel TCP buffer memory (in bytes). Depending on the
    > OCI runtime in use, this option may be ignored. It is no longer supported
    > by the default (runc) runtime.
    > 
    > This field is omitted when empty.


##### `POST` /containers/{id}/attach


###### Return Type:

Changed response : **400 Bad Request**
> bad parameter


* New content type : `application/vnd.docker.multiplexed-stream`

Changed response : **404 Not Found**
> no such container


* New content type : `application/vnd.docker.multiplexed-stream`

Changed response : **500 Internal Server Error**
> server error


* New content type : `application/vnd.docker.multiplexed-stream`

##### `GET` /containers/{id}/attach/ws


###### Parameters:

Added: `stdin` in `query`
> Attach to `stdin`


Added: `stdout` in `query`
> Attach to `stdout`


Added: `stderr` in `query`
> Attach to `stderr`


##### `GET` /images/json


###### Parameters:

Added: `shared-size` in `query`
> Compute and show shared size as a `SharedSize` field on each image.


###### Return Type:

Changed response : **200 OK**
> Summary image data for the images matching the query


* Changed content type : `application/json`

    Changed items (object):

    New optional properties:
    - `VirtualSize`

    * Changed property `VirtualSize` (integer)
        > Total size of the image including all layers it is composed of.
        > 
        > In versions of Docker before v1.10, this field was calculated from
        > the image itself and all of its parent images. Images are now stored
        > self-contained, and no longer use a parent-chain, making this field
        > an equivalent of the Size field.
        > 
        > Deprecated: this field is kept for backward compatibility, and will be removed in API v1.44.


##### `POST` /build/prune


###### Parameters:

Changed: `filters` in `query`
> A JSON encoded value of the filters (a `map[string][]string`) to
> process on the list of build cache objects.
> 
> Available filters:
> 
> - `until=<timestamp>` remove cache older than `<timestamp>`. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon's local time.
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
> Platform in the format os[/arch[/variant]].
> 
> When used in combination with the `fromImage` option, the daemon checks
> if the given image is present in the local image cache with the given
> OS and Architecture, and otherwise attempts to pull the image. If the
> option is not set, the host's native OS and Architecture are used.
> If the given image does not exist in the local image cache, the daemon
> attempts to pull the image with the host's native OS and Architecture.
> If the given image does exists in the local image cache, but its OS or
> architecture does not match, a warning is produced.
> 
> When used with the `fromSrc` option to import an image from an archive,
> this option sets the platform information for the imported image. If
> the option is not set, the host's native OS and Architecture are used
> for the imported image.


##### `GET` /_ping


###### Return Type:

Changed response : **200 OK**
> no error

New header : `Swarm`

> Contains information about Swarm status of the daemon,
> and if the daemon is acting as a manager or worker node.


Changed header : `Builder-Version`

> Default version of docker image builder
> 
> The default on Linux is version "2" (BuildKit), but the daemon
> can be configured to recommend version "1" (classic Builder).
> Windows does not yet support BuildKit for native Windows images,
> and uses "1" (classic builder) as a default.
> 
> This value is a recommendation as advertised by the daemon, and
> it is up to the client to choose which builder to use.


##### `HEAD` /_ping


###### Return Type:

Changed response : **200 OK**
> no error

New header : `Swarm`

> Contains information about Swarm status of the daemon,
> and if the daemon is acting as a manager or worker node.


##### `POST` /containers/{id}/exec


###### Request:

Changed content type : `application/json`

* Added property `ConsoleSize` (array)
    > Initial console size, as an `[height, width]` array.


    Items (integer):

##### `POST` /exec/{id}/start


###### Request:

Changed content type : `application/json`

* Added property `ConsoleSize` (array)
    > Initial console size, as an `[height, width]` array.


###### Return Type:

Changed response : **404 Not Found**
> No such exec instance


* New content type : `application/vnd.docker.multiplexed-stream`

Changed response : **409 Conflict**
> Container is stopped or paused


* New content type : `application/vnd.docker.multiplexed-stream`

##### `POST` /volumes/create


###### Request:

Changed content type : `application/json`

* Added property `ClusterVolumeSpec` (object)
    > Cluster-specific options used to create the volume.


    * Property `Group` (string)
        > Group defines the volume group of this volume. Volumes belonging to
        > the same group can be referred to by group name when creating
        > Services.  Referring to a volume by group instructs Swarm to treat
        > volumes in that group interchangeably for the purpose of scheduling.
        > Volumes with an empty string for a group technically all belong to
        > the same, emptystring group.


    * Property `AccessMode` (object)
        > Defines how the volume is used by tasks.


        * Property `Scope` (string)
            > The set of nodes this volume can be used on at one time.
            > - `single` The volume may only be scheduled to one node at a time.
            > - `multi` the volume may be scheduled to any supported number of nodes at a time.


            Enum values:

            * `single`
            * `multi`
        * Property `Sharing` (string)
            > The number and way that different tasks can use this volume
            > at one time.
            > - `none` The volume may only be used by one task at a time.
            > - `readonly` The volume may be used by any number of tasks, but they all must mount the volume as readonly
            > - `onewriter` The volume may be used by any number of tasks, but only one may mount it as read/write.
            > - `all` The volume may have any number of readers and writers.


            Enum values:

            * `none`
            * `readonly`
            * `onewriter`
            * `all`
        * Property `MountVolume` (object)
            > Options for using this volume as a Mount-type volume.
            > 
            >     Either MountVolume or BlockVolume, but not both, must be
            >     present.
            >   properties:
            >     FsType:
            >       type: "string"
            >       description: |
            >         Specifies the filesystem type for the mount volume.
            >         Optional.
            >     MountFlags:
            >       type: "array"
            >       description: |
            >         Flags to pass when mounting the volume. Optional.
            >       items:
            >         type: "string"
            > BlockVolume:
            >   type: "object"
            >   description: |
            >     Options for using this volume as a Block-type volume.
            >     Intentionally empty.


        * Property `Secrets` (array)
            > Swarm Secrets that are passed to the CSI storage plugin when
            > operating on this volume.


            Items (object):
                > One cluster volume secret entry. Defines a key-value pair that
                > is passed to the plugin.


            * Property `Key` (string)
                > Key is the name of the key of the key-value pair passed to
                > the plugin.


            * Property `Secret` (string)
                > Secret is the swarm Secret object from which to read data.
                > This can be a Secret name or ID. The Secret data is
                > retrieved by swarm and used as the value of the key-value
                > pair passed to the plugin.


        * Property `AccessibilityRequirements` (object)
            > Requirements for the accessible topology of the volume. These
            > fields are optional. For an in-depth description of what these
            > fields mean, see the CSI specification.


            * Property `Requisite` (array)
                > A list of required topologies, at least one of which the
                > volume must be accessible from.


                Items (object):
                    > A map of topological domains to topological segments. For in depth
                    > details, see documentation for the Topology object in the CSI
                    > specification.


            * Property `Preferred` (array)
                > A list of topologies that the volume should attempt to be
                > provisioned in.


                Items (object):
                    > A map of topological domains to topological segments. For in depth
                    > details, see documentation for the Topology object in the CSI
                    > specification.


        * Property `CapacityRange` (object)
            > The desired capacity that the volume should be created with. If
            > empty, the plugin will decide the capacity.


            * Property `RequiredBytes` (integer)
                > The volume must be at least this big. The value of 0
                > indicates an unspecified minimum


            * Property `LimitBytes` (integer)
                > The volume must not be bigger than this. The value of 0
                > indicates an unspecified maximum.


        * Property `Availability` (string)
            > The availability of the volume for use in tasks.
            > - `active` The volume is fully available for scheduling on the cluster
            > - `pause` No new workloads should use the volume, but existing workloads are not stopped.
            > - `drain` All workloads using this volume should be stopped and rescheduled, and no new ones should be started.


            Enum values:

            * `active`
            * `pause`
            * `drain`
###### Return Type:

Changed response : **201 Created**
> The volume was created successfully


* Changed content type : `application/json`

    * Added property `ClusterVolume` (object)
        > Options and information specific to, and only present on, Swarm CSI
        > cluster volumes.


        * Property `ID` (string)
            > The Swarm ID of this volume. Because cluster volumes are Swarm
            > objects, they have an ID, unlike non-cluster volumes. This ID can
            > be used to refer to the Volume instead of the name.


        * Property `Version` (object)
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


            * Property `Index` (integer)

        * Property `CreatedAt` (string)

        * Property `UpdatedAt` (string)

        * Property `Spec` (object)
            > Cluster-specific options used to create the volume.


        * Property `Info` (object)
            > Information about the global status of the volume.


            * Property `CapacityBytes` (integer)
                > The capacity of the volume in bytes. A value of 0 indicates that
                > the capacity is unknown.


            * Property `VolumeContext` (object)
                > A map of strings to strings returned from the storage plugin when
                > the volume is created.


            * Property `VolumeID` (string)
                > The ID of the volume as returned by the CSI storage plugin. This
                > is distinct from the volume's ID as provided by Docker. This ID
                > is never used by the user when communicating with Docker to refer
                > to this volume. If the ID is blank, then the Volume has not been
                > successfully created in the plugin yet.


            * Property `AccessibleTopology` (array)
                > The topology this volume is actually accessible from.


                Items (object):
                    > A map of topological domains to topological segments. For in depth
                    > details, see documentation for the Topology object in the CSI
                    > specification.


        * Property `PublishStatus` (array)
            > The status of the volume as it pertains to its publishing and use on
            > specific nodes


            Items (object):

            * Property `NodeID` (string)
                > The ID of the Swarm node the volume is published on.


            * Property `State` (string)
                > The published state of the volume.
                > * `pending-publish` The volume should be published to this node, but the call to the controller plugin to do so has not yet been successfully completed.
                > * `published` The volume is published successfully to the node.
                > * `pending-node-unpublish` The volume should be unpublished from the node, and the manager is awaiting confirmation from the worker that it has done so.
                > * `pending-controller-unpublish` The volume is successfully unpublished from the node, but has not yet been successfully unpublished on the controller.


                Enum values:

                * `pending-publish`
                * `published`
                * `pending-node-unpublish`
                * `pending-controller-unpublish`
            * Property `PublishContext` (object)
                > A map of strings to strings returned by the CSI controller
                > plugin when a volume is published.


##### `GET` /volumes/{name}


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    * Added property `ClusterVolume` (object)
        > Options and information specific to, and only present on, Swarm CSI
        > cluster volumes.


##### `POST` /volumes/prune


###### Parameters:

Changed: `filters` in `query`
> Filters to process on the prune list, encoded as JSON (a `map[string][]string`).
> 
> Available filters:
> - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune volumes with (or without, in case `label!=...` is used) the specified labels.
> - `all` (`all=true`) - Consider all (local) volumes for pruning and not just anonymous volumes.


##### `POST` /networks/create


###### Request:

Changed content type : `application/json`

* Added property `Scope` (string)
    > The level at which the network exists (e.g. `swarm` for cluster-wide
    > or `local` for machine level).


* Added property `ConfigOnly` (boolean)
    > Creates a config-only network. Config-only networks are placeholder
    > networks for network configurations to be used by other networks.
    > Config-only networks cannot be used directly to run containers
    > or services.


* Added property `ConfigFrom` (object)
    > The config-only network source to provide the configuration for
    > this network.


    * Property `Network` (string)
        > The name of the config-only network that provides the network's
        > configuration. The specified network must be an existing config-only
        > network. Only network names are allowed, not network IDs.


* Changed property `IPAM` (object)

    * Changed property `Config` (array)
        > List of IPAM configuration options, specified as a map:
        > 
        > ```
        > {"Subnet": <CIDR>, "IPRange": <CIDR>, "Gateway": <IP address>, "AuxAddress": <device_name:IP address>}
        > ```


        Changed items (object):

        * Added property `Subnet` (string)

        * Added property `IPRange` (string)

        * Added property `Gateway` (string)

        * Added property `AuxiliaryAddresses` (object)

##### `GET` /events


##### `GET` /volumes


###### Return Type:

Changed response : **200 OK**
> Summary volume data that matches the query


* Changed content type : `application/json`

    * Changed property `Volumes` (array)
        > List of volumes


        Changed items (object):

        * Added property `ClusterVolume` (object)
            > Options and information specific to, and only present on, Swarm CSI
            > cluster volumes.


##### `GET` /networks


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    Changed items (object):

    * Added property `ConfigFrom` (object)
        > The config-only network source to provide the configuration for
        > this network.


    * Added property `ConfigOnly` (boolean)
        > Whether the network is a config-only network. Config-only networks are
        > placeholder networks for network configurations to be used by other
        > networks. Config-only networks cannot be used directly to run containers
        > or services.


    * Added property `Peers` (array)
        > List of peer nodes for an overlay network. This field is only present
        > for overlay networks, and omitted for other network types.


        Items (object):
            > PeerInfo represents one peer of an overlay network.


        * Property `Name` (string)
            > ID of the peer-node in the Swarm cluster.


        * Property `IP` (string)
            > IP-address of the peer-node in the Swarm cluster.


    * Changed property `Name` (string)
        > Name of the network.


    * Changed property `Id` (string)
        > ID that uniquely identifies a network on a single machine.


    * Changed property `Created` (string)
        > Date and time at which the network was created in
        > [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.


    * Changed property `Scope` (string)
        > The level at which the network exists (e.g. `swarm` for cluster-wide
        > or `local` for machine level)


    * Changed property `Driver` (string)
        > The name of the driver used to create the network (e.g. `bridge`,
        > `overlay`).


    * Changed property `EnableIPv6` (boolean)
        > Whether the network was created with IPv6 enabled.


    * Changed property `Internal` (boolean)
        > Whether the network is created to only allow internal networking
        > connectivity.


    * Changed property `Attachable` (boolean)
        > Wheter a global / swarm scope network is manually attachable by regular
        > containers from workers in swarm mode.


    * Changed property `Ingress` (boolean)
        > Whether the network is providing the routing-mesh for the swarm cluster.


    * Changed property `Options` (object)
        > Network-specific options uses when creating the network.


    * Changed property `Labels` (object)
        > User-defined key/value metadata.


    * Changed property `IPAM` (object)

        * Changed property `Config` (array)
            > List of IPAM configuration options, specified as a map:
            > 
            > ```
            > {"Subnet": <CIDR>, "IPRange": <CIDR>, "Gateway": <IP address>, "AuxAddress": <device_name:IP address>}
            > ```


            Changed items (object):

            * Added property `Subnet` (string)

            * Added property `IPRange` (string)

            * Added property `Gateway` (string)

            * Added property `AuxiliaryAddresses` (object)

    * Changed property `Containers` (object)
        > Contains endpoints attached to the network.


##### `GET` /networks/{id}


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    * Added property `ConfigFrom` (object)
        > The config-only network source to provide the configuration for
        > this network.


    * Added property `ConfigOnly` (boolean)
        > Whether the network is a config-only network. Config-only networks are
        > placeholder networks for network configurations to be used by other
        > networks. Config-only networks cannot be used directly to run containers
        > or services.


    * Added property `Peers` (array)
        > List of peer nodes for an overlay network. This field is only present
        > for overlay networks, and omitted for other network types.


    * Changed property `Name` (string)
        > Name of the network.


    * Changed property `Id` (string)
        > ID that uniquely identifies a network on a single machine.


    * Changed property `Created` (string)
        > Date and time at which the network was created in
        > [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.


    * Changed property `Scope` (string)
        > The level at which the network exists (e.g. `swarm` for cluster-wide
        > or `local` for machine level)


    * Changed property `Driver` (string)
        > The name of the driver used to create the network (e.g. `bridge`,
        > `overlay`).


    * Changed property `EnableIPv6` (boolean)
        > Whether the network was created with IPv6 enabled.


    * Changed property `Internal` (boolean)
        > Whether the network is created to only allow internal networking
        > connectivity.


    * Changed property `Attachable` (boolean)
        > Wheter a global / swarm scope network is manually attachable by regular
        > containers from workers in swarm mode.


    * Changed property `Ingress` (boolean)
        > Whether the network is providing the routing-mesh for the swarm cluster.


    * Changed property `Options` (object)
        > Network-specific options uses when creating the network.


    * Changed property `Labels` (object)
        > User-defined key/value metadata.


    * Changed property `IPAM` (object)

        * Changed property `Config` (array)
            > List of IPAM configuration options, specified as a map:
            > 
            > ```
            > {"Subnet": <CIDR>, "IPRange": <CIDR>, "Gateway": <IP address>, "AuxAddress": <device_name:IP address>}
            > ```


            Changed items (object):

            * Added property `Subnet` (string)

            * Added property `IPRange` (string)

            * Added property `Gateway` (string)

            * Added property `AuxiliaryAddresses` (object)

    * Changed property `Containers` (object)
        > Contains endpoints attached to the network.


##### `POST` /services/create


###### Request:

Changed content type : `application/json`

* Changed property `Mode` (object)
    > Scheduling mode for the service.


    * Added property `ReplicatedJob` (object)
        > The mode used for services with a finite number of tasks that run
        > to a completed state.


        * Property `MaxConcurrent` (integer)
            > The maximum number of replicas to run simultaneously.


        * Property `TotalCompletions` (integer)
            > The total number of replicas desired to reach the Completed
            > state. If unset, will default to the value of `MaxConcurrent`


    * Added property `GlobalJob` (object)
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


        * Added property `CapabilityAdd` (array)
            > A list of kernel capabilities to add to the default set
            > for the container.


            Items (string):

        * Added property `CapabilityDrop` (array)
            > A list of kernel capabilities to drop from the default set
            > for the container.


            Items (string):

        * Added property `Ulimits` (array)
            > A list of resource limits to set in the container. For example: `{"Name": "nofile", "Soft": 1024, "Hard": 2048}`"


            Items (object):

            * Property `Name` (string)
                > Name of ulimit


            * Property `Soft` (integer)
                > Soft limit


            * Property `Hard` (integer)
                > Hard limit


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
                > - `cluster` a Swarm cluster volume


                Added enum value:

                * `cluster`
            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Added property `CreateMountpoint` (boolean)
                    > Create mount point on host if missing


    * Changed property `Resources` (object)
        > Resource requirements which apply to each individual container created
        > as part of the service.


        * Changed property `Limits` (object)
            > An object describing a limit on resources which can be requested by a task.


            * Added property `Pids` (integer)
                > Limits the maximum number of PIDs in the container. Set `0` for unlimited.


            * Deleted property `GenericResources` (array)
                > User-defined resources can be either Integer resources (e.g, `SSD=3`) or
                > String resources (e.g, `GPU=UUID1`).


##### `POST` /services/{id}/update


###### Request:

Changed content type : `application/json`

* Changed property `Mode` (object)
    > Scheduling mode for the service.


    * Added property `ReplicatedJob` (object)
        > The mode used for services with a finite number of tasks that run
        > to a completed state.


    * Added property `GlobalJob` (object)
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


        * Added property `CapabilityAdd` (array)
            > A list of kernel capabilities to add to the default set
            > for the container.


        * Added property `CapabilityDrop` (array)
            > A list of kernel capabilities to drop from the default set
            > for the container.


        * Added property `Ulimits` (array)
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
                > - `cluster` a Swarm cluster volume


                Added enum value:

                * `cluster`
            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Added property `CreateMountpoint` (boolean)
                    > Create mount point on host if missing


    * Changed property `Resources` (object)
        > Resource requirements which apply to each individual container created
        > as part of the service.


        * Changed property `Limits` (object)
            > An object describing a limit on resources which can be requested by a task.


            * Added property `Pids` (integer)
                > Limits the maximum number of PIDs in the container. Set `0` for unlimited.


            * Deleted property `GenericResources` (array)
                > User-defined resources can be either Integer resources (e.g, `SSD=3`) or
                > String resources (e.g, `GPU=UUID1`).


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
            > - `cluster` a Swarm cluster volume


            Added enum value:

            * `cluster`
##### `POST` /containers/create


###### Parameters:

Added: `platform` in `query`
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


    * Added property `Annotations` (object)
        > Arbitrary non-identifying metadata attached to container and
        > provided to the runtime when the container is started.


    * Added property `CgroupnsMode` (string)
        > cgroup namespace mode for the container. Possible values are:
        > 
        > - `"private"`: the container runs in its own private cgroup namespace
        > - `"host"`: use the host system's cgroup namespace
        > 
        > If not specified, the daemon default is used, which can either be `"private"`
        > or `"host"`, depending on daemon version, kernel support and configuration.


        Enum values:

        * `private`
        * `host`
    * Deleted property `KernelMemory` (integer)
        > Kernel memory limit in bytes.


    * Deleted property `Capabilities` (array)
        > A list of kernel capabilities to be available for container (this
        > overrides the default set).
        > 
        > Conflicts with options 'CapAdd' and 'CapDrop'"


    * Changed property `KernelMemoryTCP` (integer)
        > Hard limit for kernel TCP buffer memory (in bytes). Depending on the
        > OCI runtime in use, this option may be ignored. It is no longer supported
        > by the default (runc) runtime.
        > 
        > This field is omitted when empty.


    * Changed property `ConsoleSize` (array)
        > Initial console size, as an `[height, width]` array.


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
            > - `cluster` a Swarm cluster volume


            Added enum value:

            * `cluster`
        * Changed property `BindOptions` (object)
            > Optional configuration for the `bind` type.


            * Added property `CreateMountpoint` (boolean)
                > Create mount point on host if missing


Changed content type : `application/octet-stream`

* Changed property `HostConfig` (object)
    > A container's resources (cgroups config, ulimits, etc)


    * Added property `Annotations` (object)
        > Arbitrary non-identifying metadata attached to container and
        > provided to the runtime when the container is started.


    * Added property `CgroupnsMode` (string)
        > cgroup namespace mode for the container. Possible values are:
        > 
        > - `"private"`: the container runs in its own private cgroup namespace
        > - `"host"`: use the host system's cgroup namespace
        > 
        > If not specified, the daemon default is used, which can either be `"private"`
        > or `"host"`, depending on daemon version, kernel support and configuration.


    * Deleted property `KernelMemory` (integer)
        > Kernel memory limit in bytes.


    * Deleted property `Capabilities` (array)
        > A list of kernel capabilities to be available for container (this
        > overrides the default set).
        > 
        > Conflicts with options 'CapAdd' and 'CapDrop'"


    * Changed property `KernelMemoryTCP` (integer)
        > Hard limit for kernel TCP buffer memory (in bytes). Depending on the
        > OCI runtime in use, this option may be ignored. It is no longer supported
        > by the default (runc) runtime.
        > 
        > This field is omitted when empty.


    * Changed property `ConsoleSize` (array)
        > Initial console size, as an `[height, width]` array.


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
            > - `cluster` a Swarm cluster volume


            Added enum value:

            * `cluster`
        * Changed property `BindOptions` (object)
            > Optional configuration for the `bind` type.


            * Added property `CreateMountpoint` (boolean)
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
            > - `cluster` a Swarm cluster volume


            Added enum value:

            * `cluster`
    * Changed property `State` (object)
        > ContainerState stores container's running state. It's part of ContainerJSONBase
        > and will be returned by the "inspect" command.


        * Changed property `OOMKilled` (boolean)
            > Whether a process within this container has been killed because it ran
            > out of memory since the container was last started.


    * Changed property `HostConfig` (object)
        > A container's resources (cgroups config, ulimits, etc)


        * Added property `Annotations` (object)
            > Arbitrary non-identifying metadata attached to container and
            > provided to the runtime when the container is started.


        * Added property `CgroupnsMode` (string)
            > cgroup namespace mode for the container. Possible values are:
            > 
            > - `"private"`: the container runs in its own private cgroup namespace
            > - `"host"`: use the host system's cgroup namespace
            > 
            > If not specified, the daemon default is used, which can either be `"private"`
            > or `"host"`, depending on daemon version, kernel support and configuration.


        * Deleted property `KernelMemory` (integer)
            > Kernel memory limit in bytes.


        * Deleted property `Capabilities` (array)
            > A list of kernel capabilities to be available for container (this
            > overrides the default set).
            > 
            > Conflicts with options 'CapAdd' and 'CapDrop'"


        * Changed property `KernelMemoryTCP` (integer)
            > Hard limit for kernel TCP buffer memory (in bytes). Depending on the
            > OCI runtime in use, this option may be ignored. It is no longer supported
            > by the default (runc) runtime.
            > 
            > This field is omitted when empty.


        * Changed property `ConsoleSize` (array)
            > Initial console size, as an `[height, width]` array.


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
                > - `cluster` a Swarm cluster volume


                Added enum value:

                * `cluster`
            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Added property `CreateMountpoint` (boolean)
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
        > the image itself and all of its parent images. Images are now stored
        > self-contained, and no longer use a parent-chain, making this field
        > an equivalent of the Size field.
        > 
        > > **Deprecated**: this field is kept for backward compatibility, but
        > > will be removed in API v1.44.


##### `GET` /system/df


###### Parameters:

Added: `type` in `query`
> Object types, for which to compute and return data.


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Changed property `Images` (array)

        Changed items (object):

        New optional properties:
        - `VirtualSize`

        * Changed property `VirtualSize` (integer)
            > Total size of the image including all layers it is composed of.
            > 
            > In versions of Docker before v1.10, this field was calculated from
            > the image itself and all of its parent images. Images are now stored
            > self-contained, and no longer use a parent-chain, making this field
            > an equivalent of the Size field.
            > 
            > Deprecated: this field is kept for backward compatibility, and will be removed in API v1.44.


    * Changed property `Volumes` (array)

        Changed items (object):

        * Added property `ClusterVolume` (object)
            > Options and information specific to, and only present on, Swarm CSI
            > cluster volumes.


    * Changed property `BuildCache` (array)

        Changed items (object):
            > BuildCache contains information about a build cache record.


        * Added property `Parents` (array)
            > List of parent build cache record IDs.


            Items (string):

        * Changed property `Parent` (string)
            > ID of the parent build cache record.
            > 
            > > **Deprecated**: This field is deprecated, and omitted if empty.


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
                > - `cluster` a Swarm cluster volume


                Added enum value:

                * `cluster`
* Changed content type : `text/plain`

    * Changed property `Images` (array)

        Changed items (object):

        New optional properties:
        - `VirtualSize`

        * Changed property `VirtualSize` (integer)
            > Total size of the image including all layers it is composed of.
            > 
            > In versions of Docker before v1.10, this field was calculated from
            > the image itself and all of its parent images. Images are now stored
            > self-contained, and no longer use a parent-chain, making this field
            > an equivalent of the Size field.
            > 
            > Deprecated: this field is kept for backward compatibility, and will be removed in API v1.44.


    * Changed property `Volumes` (array)

        Changed items (object):

        * Added property `ClusterVolume` (object)
            > Options and information specific to, and only present on, Swarm CSI
            > cluster volumes.


    * Changed property `BuildCache` (array)

        Changed items (object):
            > BuildCache contains information about a build cache record.


        * Added property `Parents` (array)
            > List of parent build cache record IDs.


        * Changed property `Parent` (string)
            > ID of the parent build cache record.
            > 
            > > **Deprecated**: This field is deprecated, and omitted if empty.


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
                > - `cluster` a Swarm cluster volume


                Added enum value:

                * `cluster`
##### `GET` /tasks


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    Changed items (object):

    * Added property `JobIteration` (object)
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


            * Added property `CapabilityAdd` (array)
                > A list of kernel capabilities to add to the default set
                > for the container.


            * Added property `CapabilityDrop` (array)
                > A list of kernel capabilities to drop from the default set
                > for the container.


            * Added property `Ulimits` (array)
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
                    > - `cluster` a Swarm cluster volume


                    Added enum value:

                    * `cluster`
                * Changed property `BindOptions` (object)
                    > Optional configuration for the `bind` type.


                    * Added property `CreateMountpoint` (boolean)
                        > Create mount point on host if missing


        * Changed property `Resources` (object)
            > Resource requirements which apply to each individual container created
            > as part of the service.


            * Changed property `Limits` (object)
                > An object describing a limit on resources which can be requested by a task.


                * Added property `Pids` (integer)
                    > Limits the maximum number of PIDs in the container. Set `0` for unlimited.


                * Deleted property `GenericResources` (array)
                    > User-defined resources can be either Integer resources (e.g, `SSD=3`) or
                    > String resources (e.g, `GPU=UUID1`).


##### `GET` /tasks/{id}


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Added property `JobIteration` (object)
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


            * Added property `CapabilityAdd` (array)
                > A list of kernel capabilities to add to the default set
                > for the container.


            * Added property `CapabilityDrop` (array)
                > A list of kernel capabilities to drop from the default set
                > for the container.


            * Added property `Ulimits` (array)
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
                    > - `cluster` a Swarm cluster volume


                    Added enum value:

                    * `cluster`
                * Changed property `BindOptions` (object)
                    > Optional configuration for the `bind` type.


                    * Added property `CreateMountpoint` (boolean)
                        > Create mount point on host if missing


        * Changed property `Resources` (object)
            > Resource requirements which apply to each individual container created
            > as part of the service.


            * Changed property `Limits` (object)
                > An object describing a limit on resources which can be requested by a task.


                * Added property `Pids` (integer)
                    > Limits the maximum number of PIDs in the container. Set `0` for unlimited.


                * Deleted property `GenericResources` (array)
                    > User-defined resources can be either Integer resources (e.g, `SSD=3`) or
                    > String resources (e.g, `GPU=UUID1`).


##### `GET` /info


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    * Added property `CgroupVersion` (string)
        > The version of the cgroup.


        Enum values:

        * `1`
        * `2`
    * Added property `OSVersion` (string)
        > Version of the host's operating system
        > 
        > <p><br /></p>
        > 
        > > **Note**: The information returned in this field, including its
        > > very existence, and the formatting of values, should not be considered
        > > stable, and may change without notice.


    * Added property `DefaultAddressPools` (array)
        > List of custom default address pools for local networks, which can be
        > specified in the daemon.json file or dockerd option.
        > 
        > Example: a Base "10.10.0.0/16" with Size 24 will define the set of 256
        > 10.10.[0-255].0/24 address pools.


        Items (object):

        * Property `Base` (string)
            > The network address in CIDR format


        * Property `Size` (integer)
            > The network pool size


    * Deleted property `SystemStatus` (array)
        > Status information about this node (standalone Swarm API).
        > 
        > <p><br /></p>
        > 
        > > **Note**: The information returned in this field is only propagated
        > > by the Swarm standalone API, and is empty (`null`) when using
        > > built-in swarm mode.


    * Deleted property `KernelMemory` (boolean)
        > Indicates if the host has kernel memory limit support enabled.


    * Deleted property `ClusterStore` (string)
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


    * Deleted property `ClusterAdvertise` (string)
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


    * Changed property `KernelMemoryTCP` (boolean)
        > Indicates if the host has kernel memory TCP limit support enabled. This
        > field is omitted if not supported.
        > 
        > Kernel memory TCP limits are not supported when using cgroups v2, which
        > does not support the corresponding `memory.kmem.tcp.limit_in_bytes` cgroup.


    * Changed property `SecurityOptions` (array)
        > List of security features that are enabled on the daemon, such as
        > apparmor, seccomp, SELinux, user-namespaces (userns), rootless and
        > no-new-privileges.
        > 
        > Additional configuration options for each security feature may
        > be present, and are included as a comma-separated list of key/value
        > pairs.


##### `GET` /services


###### Parameters:

Added: `status` in `query`
> Include service status, with count of running and desired tasks.


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    Changed items (object):

    * Added property `ServiceStatus` (object)
        > The status of the service's tasks. Provided only when requested as
        > part of a ServiceList operation.


        * Property `RunningTasks` (integer)
            > The number of tasks for the service currently in the Running state.


        * Property `DesiredTasks` (integer)
            > The number of tasks for the service desired to be running.
            > For replicated services, this is the replica count from the
            > service spec. For global services, this is computed by taking
            > count of all tasks for the service with a Desired State other
            > than Shutdown.


        * Property `CompletedTasks` (integer)
            > The number of tasks for a job that are in the Completed state.
            > This field must be cross-referenced with the service type, as the
            > value of 0 may mean the service is not in a job mode, or it may
            > mean the job-mode service has no tasks yet Completed.


    * Added property `JobStatus` (object)
        > The status of the service when it is in one of ReplicatedJob or
        > GlobalJob modes. Absent on Replicated and Global mode services. The
        > JobIteration is an ObjectVersion, but unlike the Service's version,
        > does not need to be sent with an update request.


        * Property `JobIteration` (object)
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


        * Property `LastExecution` (string)
            > The last time, as observed by the server, that this job was
            > started.


    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


        * Changed property `Mode` (object)
            > Scheduling mode for the service.


            * Added property `ReplicatedJob` (object)
                > The mode used for services with a finite number of tasks that run
                > to a completed state.


            * Added property `GlobalJob` (object)
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


                * Added property `CapabilityAdd` (array)
                    > A list of kernel capabilities to add to the default set
                    > for the container.


                * Added property `CapabilityDrop` (array)
                    > A list of kernel capabilities to drop from the default set
                    > for the container.


                * Added property `Ulimits` (array)
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
                        > - `cluster` a Swarm cluster volume


                        Added enum value:

                        * `cluster`
                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Added property `CreateMountpoint` (boolean)
                            > Create mount point on host if missing


            * Changed property `Resources` (object)
                > Resource requirements which apply to each individual container created
                > as part of the service.


                * Changed property `Limits` (object)
                    > An object describing a limit on resources which can be requested by a task.


                    * Added property `Pids` (integer)
                        > Limits the maximum number of PIDs in the container. Set `0` for unlimited.


                    * Deleted property `GenericResources` (array)
                        > User-defined resources can be either Integer resources (e.g, `SSD=3`) or
                        > String resources (e.g, `GPU=UUID1`).


* Changed content type : `text/plain`

    Changed items (object):

    * Added property `ServiceStatus` (object)
        > The status of the service's tasks. Provided only when requested as
        > part of a ServiceList operation.


    * Added property `JobStatus` (object)
        > The status of the service when it is in one of ReplicatedJob or
        > GlobalJob modes. Absent on Replicated and Global mode services. The
        > JobIteration is an ObjectVersion, but unlike the Service's version,
        > does not need to be sent with an update request.


    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


        * Changed property `Mode` (object)
            > Scheduling mode for the service.


            * Added property `ReplicatedJob` (object)
                > The mode used for services with a finite number of tasks that run
                > to a completed state.


            * Added property `GlobalJob` (object)
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


                * Added property `CapabilityAdd` (array)
                    > A list of kernel capabilities to add to the default set
                    > for the container.


                * Added property `CapabilityDrop` (array)
                    > A list of kernel capabilities to drop from the default set
                    > for the container.


                * Added property `Ulimits` (array)
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
                        > - `cluster` a Swarm cluster volume


                        Added enum value:

                        * `cluster`
                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Added property `CreateMountpoint` (boolean)
                            > Create mount point on host if missing


            * Changed property `Resources` (object)
                > Resource requirements which apply to each individual container created
                > as part of the service.


                * Changed property `Limits` (object)
                    > An object describing a limit on resources which can be requested by a task.


                    * Added property `Pids` (integer)
                        > Limits the maximum number of PIDs in the container. Set `0` for unlimited.


                    * Deleted property `GenericResources` (array)
                        > User-defined resources can be either Integer resources (e.g, `SSD=3`) or
                        > String resources (e.g, `GPU=UUID1`).


##### `GET` /services/{id}


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Added property `ServiceStatus` (object)
        > The status of the service's tasks. Provided only when requested as
        > part of a ServiceList operation.


    * Added property `JobStatus` (object)
        > The status of the service when it is in one of ReplicatedJob or
        > GlobalJob modes. Absent on Replicated and Global mode services. The
        > JobIteration is an ObjectVersion, but unlike the Service's version,
        > does not need to be sent with an update request.


    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


        * Changed property `Mode` (object)
            > Scheduling mode for the service.


            * Added property `ReplicatedJob` (object)
                > The mode used for services with a finite number of tasks that run
                > to a completed state.


            * Added property `GlobalJob` (object)
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


                * Added property `CapabilityAdd` (array)
                    > A list of kernel capabilities to add to the default set
                    > for the container.


                * Added property `CapabilityDrop` (array)
                    > A list of kernel capabilities to drop from the default set
                    > for the container.


                * Added property `Ulimits` (array)
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
                        > - `cluster` a Swarm cluster volume


                        Added enum value:

                        * `cluster`
                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Added property `CreateMountpoint` (boolean)
                            > Create mount point on host if missing


            * Changed property `Resources` (object)
                > Resource requirements which apply to each individual container created
                > as part of the service.


                * Changed property `Limits` (object)
                    > An object describing a limit on resources which can be requested by a task.


                    * Added property `Pids` (integer)
                        > Limits the maximum number of PIDs in the container. Set `0` for unlimited.


                    * Deleted property `GenericResources` (array)
                        > User-defined resources can be either Integer resources (e.g, `SSD=3`) or
                        > String resources (e.g, `GPU=UUID1`).


* Changed content type : `text/plain`

    * Added property `ServiceStatus` (object)
        > The status of the service's tasks. Provided only when requested as
        > part of a ServiceList operation.


    * Added property `JobStatus` (object)
        > The status of the service when it is in one of ReplicatedJob or
        > GlobalJob modes. Absent on Replicated and Global mode services. The
        > JobIteration is an ObjectVersion, but unlike the Service's version,
        > does not need to be sent with an update request.


    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


        * Changed property `Mode` (object)
            > Scheduling mode for the service.


            * Added property `ReplicatedJob` (object)
                > The mode used for services with a finite number of tasks that run
                > to a completed state.


            * Added property `GlobalJob` (object)
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


                * Added property `CapabilityAdd` (array)
                    > A list of kernel capabilities to add to the default set
                    > for the container.


                * Added property `CapabilityDrop` (array)
                    > A list of kernel capabilities to drop from the default set
                    > for the container.


                * Added property `Ulimits` (array)
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
                        > - `cluster` a Swarm cluster volume


                        Added enum value:

                        * `cluster`
                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Added property `CreateMountpoint` (boolean)
                            > Create mount point on host if missing


            * Changed property `Resources` (object)
                > Resource requirements which apply to each individual container created
                > as part of the service.


                * Changed property `Limits` (object)
                    > An object describing a limit on resources which can be requested by a task.


                    * Added property `Pids` (integer)
                        > Limits the maximum number of PIDs in the container. Set `0` for unlimited.


                    * Deleted property `GenericResources` (array)
                        > User-defined resources can be either Integer resources (e.g, `SSD=3`) or
                        > String resources (e.g, `GPU=UUID1`).



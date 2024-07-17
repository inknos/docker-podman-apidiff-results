#### What's Changed
---

##### `GET` /containers/{id}/stats


###### Parameters:

Added: `one-shot` in `query`
> Only get a single stat instead of waiting for 2 cycles. Must be used
> with `stream=false`.


##### `POST` /containers/{id}/update


###### Request:

Changed content type : `application/json`

* Changed property `KernelMemory` (integer)
    > Kernel memory limit in bytes.
    >
    > <p><br /></p>
    >
    > > **Deprecated**: This field is deprecated as the kernel 5.4 deprecated
    > > `kmem.limit_in_bytes`.


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
    * Deleted property `Capabilities` (array)
        > A list of kernel capabilities to be available for container (this
        > overrides the default set).
        >
        > Conflicts with options 'CapAdd' and 'CapDrop'"


    * Changed property `KernelMemory` (integer)
        > Kernel memory limit in bytes.
        >
        > <p><br /></p>
        >
        > > **Deprecated**: This field is deprecated as the kernel 5.4 deprecated
        > > `kmem.limit_in_bytes`.


Changed content type : `application/octet-stream`

* Changed property `HostConfig` (object)
    > A container's resources (cgroups config, ulimits, etc)


    * Added property `CgroupnsMode` (string)
        > cgroup namespace mode for the container. Possible values are:
        >
        > - `"private"`: the container runs in its own private cgroup namespace
        > - `"host"`: use the host system's cgroup namespace
        >
        > If not specified, the daemon default is used, which can either be `"private"`
        > or `"host"`, depending on daemon version, kernel support and configuration.


    * Deleted property `Capabilities` (array)
        > A list of kernel capabilities to be available for container (this
        > overrides the default set).
        >
        > Conflicts with options 'CapAdd' and 'CapDrop'"


    * Changed property `KernelMemory` (integer)
        > Kernel memory limit in bytes.
        >
        > <p><br /></p>
        >
        > > **Deprecated**: This field is deprecated as the kernel 5.4 deprecated
        > > `kmem.limit_in_bytes`.


##### `GET` /containers/{id}/json


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Changed property `HostConfig` (object)
        > A container's resources (cgroups config, ulimits, etc)


        * Added property `CgroupnsMode` (string)
            > cgroup namespace mode for the container. Possible values are:
            >
            > - `"private"`: the container runs in its own private cgroup namespace
            > - `"host"`: use the host system's cgroup namespace
            >
            > If not specified, the daemon default is used, which can either be `"private"`
            > or `"host"`, depending on daemon version, kernel support and configuration.


        * Deleted property `Capabilities` (array)
            > A list of kernel capabilities to be available for container (this
            > overrides the default set).
            >
            > Conflicts with options 'CapAdd' and 'CapDrop'"


        * Changed property `KernelMemory` (integer)
            > Kernel memory limit in bytes.
            >
            > <p><br /></p>
            >
            > > **Deprecated**: This field is deprecated as the kernel 5.4 deprecated
            > > `kmem.limit_in_bytes`.


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


        * Property `Index` (integer)

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


    * Changed property `KernelMemory` (boolean)
        > Indicates if the host has kernel memory limit support enabled.
        >
        > <p><br /></p>
        >
        > > **Deprecated**: This field is deprecated as the kernel 5.4 deprecated
        > > `kmem.limit_in_bytes`.


    * Changed property `ClusterStore` (string)
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


    * Changed property `ClusterAdvertise` (string)
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

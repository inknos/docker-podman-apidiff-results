#### What's Changed
---

##### `GET` /containers/{id}/stats


###### Parameters:

Deleted: `one-shot` in `query`
> Only get a single stat instead of waiting for 2 cycles. Must be used
> with `stream=false`.


##### `POST` /containers/{id}/update


###### Request:

Changed content type : `application/json`

* Changed property `KernelMemory` (integer)
    > Kernel memory limit in bytes.


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


    * Added property `Capabilities` (array)
        > A list of kernel capabilities to be available for container (this
        > overrides the default set).
        > 
        > Conflicts with options 'CapAdd' and 'CapDrop'"


        Items (string):

    * Deleted property `CgroupnsMode` (string)
        > cgroup namespace mode for the container. Possible values are:
        > 
        > - `"private"`: the container runs in its own private cgroup namespace
        > - `"host"`: use the host system's cgroup namespace
        > 
        > If not specified, the daemon default is used, which can either be `"private"`
        > or `"host"`, depending on daemon version, kernel support and configuration.


    * Changed property `KernelMemory` (integer)
        > Kernel memory limit in bytes.


Changed content type : `application/octet-stream`

* Changed property `HostConfig` (object)
    > A container's resources (cgroups config, ulimits, etc)


    * Added property `Capabilities` (array)
        > A list of kernel capabilities to be available for container (this
        > overrides the default set).
        > 
        > Conflicts with options 'CapAdd' and 'CapDrop'"


    * Deleted property `CgroupnsMode` (string)
        > cgroup namespace mode for the container. Possible values are:
        > 
        > - `"private"`: the container runs in its own private cgroup namespace
        > - `"host"`: use the host system's cgroup namespace
        > 
        > If not specified, the daemon default is used, which can either be `"private"`
        > or `"host"`, depending on daemon version, kernel support and configuration.


    * Changed property `KernelMemory` (integer)
        > Kernel memory limit in bytes.


##### `GET` /containers/{id}/json


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Changed property `HostConfig` (object)
        > A container's resources (cgroups config, ulimits, etc)


        * Added property `Capabilities` (array)
            > A list of kernel capabilities to be available for container (this
            > overrides the default set).
            > 
            > Conflicts with options 'CapAdd' and 'CapDrop'"


        * Deleted property `CgroupnsMode` (string)
            > cgroup namespace mode for the container. Possible values are:
            > 
            > - `"private"`: the container runs in its own private cgroup namespace
            > - `"host"`: use the host system's cgroup namespace
            > 
            > If not specified, the daemon default is used, which can either be `"private"`
            > or `"host"`, depending on daemon version, kernel support and configuration.


        * Changed property `KernelMemory` (integer)
            > Kernel memory limit in bytes.


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


    * Changed property `KernelMemory` (boolean)
        > Indicates if the host has kernel memory limit support enabled.


    * Changed property `ClusterStore` (string)
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


    * Changed property `ClusterAdvertise` (string)
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



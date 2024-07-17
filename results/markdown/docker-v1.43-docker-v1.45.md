#### What's Changed
---

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
> - `until=<timestamp>`


###### Return Type:

Changed response : **200 OK**
> Summary image data for the images matching the query


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `VirtualSize` (integer)
        > Total size of the image including all layers it is composed of.
        > 
        > Deprecated: this field is omitted in API v1.44, but kept for backward compatibility. Use Size instead.


##### `POST` /images/create


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

* Changed property `MacAddress` (string)
    > MAC address of the container.
    > 
    > Deprecated: this field is deprecated in API v1.44 and up. Use EndpointSettings.MacAddress instead.


* Changed property `Healthcheck` (object)
    > A test to perform to check that the container is healthy.


    * Added property `StartInterval` (integer)
        > The time to wait between checks in nanoseconds during the start period.
        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


##### `POST` /networks/create


###### Request:

Changed content type : `application/json`

* Changed property `CheckDuplicate` (boolean)
    > Deprecated: CheckDuplicate is now always enabled.


###### Return Type:

Changed response : **403 Forbidden**
> Forbidden operation. This happens when trying to create a network named after a pre-defined network,
> or when trying to create an overlay network on a daemon which is not part of a Swarm cluster.

##### `POST` /networks/{id}/connect


###### Request:

Changed content type : `application/json`

* Changed property `EndpointConfig` (object)
    > Configuration for a network endpoint.


    * Added property `DNSNames` (array)
        > List of all DNS names an endpoint has on a specific network. This
        > list is based on the container name, network aliases, container short
        > ID, and hostname.
        > 
        > These DNS names are non-fully qualified but can contain several dots.
        > You can get fully qualified DNS names by appending `.<network-name>`.
        > For instance, if container name is `my.ctr` and the network is named
        > `testnet`, `DNSNames` will contain `my.ctr` and the FQDN will be
        > `my.ctr.testnet`.


        Items (string):

    * Changed property `MacAddress` (string)
        > MAC address for the endpoint on this network. The network driver might ignore this parameter.


###### Return Type:

New response : **400 Bad Request**
> bad parameter

Changed response : **403 Forbidden**
> Operation forbidden

##### `GET` /containers/json


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `NetworkSettings` (object)
        > A summary of the container's network settings


        * Changed property `Networks` (object)

##### `POST` /containers/create


###### Request:

Changed content type : `application/json`

* Changed property `MacAddress` (string)
    > MAC address of the container.
    > 
    > Deprecated: this field is deprecated in API v1.44 and up. Use EndpointSettings.MacAddress instead.


* Changed property `Healthcheck` (object)
    > A test to perform to check that the container is healthy.


    * Added property `StartInterval` (integer)
        > The time to wait between checks in nanoseconds during the start period.
        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


* Changed property `HostConfig` (object)
    > A container's resources (cgroups config, ulimits, etc)


    * Changed property `Mounts` (array)
        > Specification for mounts to be added to the container.


        Changed items (object):

        * Changed property `BindOptions` (object)
            > Optional configuration for the `bind` type.


            * Added property `ReadOnlyNonRecursive` (boolean)
                > Make the mount non-recursively read-only, but still leave the mount recursive
                > (unless NonRecursive is set to `true` in conjunction).
                > 
                > Addded in v1.44, before that version all read-only mounts were
                > non-recursive by default. To match the previous behaviour this
                > will default to `true` for clients on versions prior to v1.44.


            * Added property `ReadOnlyForceRecursive` (boolean)
                > Raise an error if the mount cannot be made recursively read-only.


        * Changed property `VolumeOptions` (object)
            > Optional configuration for the `volume` type.


            * Added property `Subpath` (string)
                > Source path inside the volume. Must be relative without any back traversals.


* Changed property `NetworkingConfig` (object)
    > NetworkingConfig represents the container's networking configuration for
    > each of its interfaces.
    > It is used for the networking configs specified in the `docker create`
    > and `docker network connect` commands.


    * Changed property `EndpointsConfig` (object)
        > A mapping of network name to endpoint configuration for that network.
        > The endpoint configuration can be left empty to connect to that
        > network with no particular endpoint configuration.


Changed content type : `application/octet-stream`

* Changed property `MacAddress` (string)
    > MAC address of the container.
    > 
    > Deprecated: this field is deprecated in API v1.44 and up. Use EndpointSettings.MacAddress instead.


* Changed property `Healthcheck` (object)
    > A test to perform to check that the container is healthy.


    * Added property `StartInterval` (integer)
        > The time to wait between checks in nanoseconds during the start period.
        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


* Changed property `HostConfig` (object)
    > A container's resources (cgroups config, ulimits, etc)


    * Changed property `Mounts` (array)
        > Specification for mounts to be added to the container.


        Changed items (object):

        * Changed property `BindOptions` (object)
            > Optional configuration for the `bind` type.


            * Added property `ReadOnlyNonRecursive` (boolean)
                > Make the mount non-recursively read-only, but still leave the mount recursive
                > (unless NonRecursive is set to `true` in conjunction).
                > 
                > Addded in v1.44, before that version all read-only mounts were
                > non-recursive by default. To match the previous behaviour this
                > will default to `true` for clients on versions prior to v1.44.


            * Added property `ReadOnlyForceRecursive` (boolean)
                > Raise an error if the mount cannot be made recursively read-only.


        * Changed property `VolumeOptions` (object)
            > Optional configuration for the `volume` type.


            * Added property `Subpath` (string)
                > Source path inside the volume. Must be relative without any back traversals.


* Changed property `NetworkingConfig` (object)
    > NetworkingConfig represents the container's networking configuration for
    > each of its interfaces.
    > It is used for the networking configs specified in the `docker create`
    > and `docker network connect` commands.


    * Changed property `EndpointsConfig` (object)
        > A mapping of network name to endpoint configuration for that network.
        > The endpoint configuration can be left empty to connect to that
        > network with no particular endpoint configuration.


##### `GET` /containers/{id}/json


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Changed property `Config` (object)
        > Configuration for a container that is portable between hosts.


        * Changed property `MacAddress` (string)
            > MAC address of the container.
            > 
            > Deprecated: this field is deprecated in API v1.44 and up. Use EndpointSettings.MacAddress instead.


        * Changed property `Healthcheck` (object)
            > A test to perform to check that the container is healthy.


            * Added property `StartInterval` (integer)
                > The time to wait between checks in nanoseconds during the start period.
                > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


    * Changed property `HostConfig` (object)
        > A container's resources (cgroups config, ulimits, etc)


        * Changed property `Mounts` (array)
            > Specification for mounts to be added to the container.


            Changed items (object):

            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Added property `ReadOnlyNonRecursive` (boolean)
                    > Make the mount non-recursively read-only, but still leave the mount recursive
                    > (unless NonRecursive is set to `true` in conjunction).
                    > 
                    > Addded in v1.44, before that version all read-only mounts were
                    > non-recursive by default. To match the previous behaviour this
                    > will default to `true` for clients on versions prior to v1.44.


                * Added property `ReadOnlyForceRecursive` (boolean)
                    > Raise an error if the mount cannot be made recursively read-only.


            * Changed property `VolumeOptions` (object)
                > Optional configuration for the `volume` type.


                * Added property `Subpath` (string)
                    > Source path inside the volume. Must be relative without any back traversals.


    * Changed property `NetworkSettings` (object)
        > NetworkSettings exposes the network settings in the API


        * Changed property `Bridge` (string)
            > Name of the default bridge interface when dockerd's --bridge flag is set.


        * Changed property `HairpinMode` (boolean)
            > Indicates if hairpin NAT should be enabled on the virtual interface.
            > 
            > Deprecated: This field is never set and will be removed in a future release.


        * Changed property `LinkLocalIPv6Address` (string)
            > IPv6 unicast address using the link-local prefix.
            > 
            > Deprecated: This field is never set and will be removed in a future release.


        * Changed property `LinkLocalIPv6PrefixLen` (integer)
            > Prefix length of the IPv6 unicast address.
            > 
            > Deprecated: This field is never set and will be removed in a future release.


        * Changed property `SandboxKey` (string)
            > SandboxKey is the full path of the netns handle


        * Changed property `SecondaryIPv6Addresses` (array)
            > Deprecated: This field is never set and will be removed in a future release.


        * Changed property `SecondaryIPAddresses` (array)
            > Deprecated: This field is never set and will be removed in a future release.


        * Changed property `Networks` (object)
            > Information about all networks that the container is connected to.


##### `GET` /images/{name}/json


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    * Deleted property `Container` (string)
        > The ID of the container that was used to create the image.
        > 
        > Depending on how the image was created, this field may be empty.


    * Deleted property `ContainerConfig` (object)
        > Configuration for a container that is portable between hosts.


    * Changed property `Created` (string -> string)
        > Date and time at which the image was created, formatted in
        > [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.
        > 
        > This information is only available if present in the image,
        > and omitted otherwise.


    * Changed property `VirtualSize` (integer)
        > Total size of the image including all layers it is composed of.
        > 
        > Deprecated: this field is omitted in API v1.44, but kept for backward compatibility. Use Size instead.


    * Changed property `Config` (object)
        > Configuration of the image. These fields are used as defaults
        > when starting a container from the image.


        * Changed property `MacAddress` (string)
            > MAC address of the container.
            > 
            > <p><br /></p>
            > 
            > > **Deprecated**: this field is deprecated in API v1.44 and up. It is always omitted.


        * Changed property `Healthcheck` (object)
            > A test to perform to check that the container is healthy.


            * Added property `StartInterval` (integer)
                > The time to wait between checks in nanoseconds during the start period.
                > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


##### `GET` /system/df


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Changed property `Images` (array)

        Changed items (object):

        * Changed property `VirtualSize` (integer)
            > Total size of the image including all layers it is composed of.
            > 
            > Deprecated: this field is omitted in API v1.44, but kept for backward compatibility. Use Size instead.


    * Changed property `Containers` (array)

        Changed items (object):

        * Changed property `NetworkSettings` (object)
            > A summary of the container's network settings


            * Changed property `Networks` (object)

* Changed content type : `text/plain`

    * Changed property `Images` (array)

        Changed items (object):

        * Changed property `VirtualSize` (integer)
            > Total size of the image including all layers it is composed of.
            > 
            > Deprecated: this field is omitted in API v1.44, but kept for backward compatibility. Use Size instead.


    * Changed property `Containers` (array)

        Changed items (object):

        * Changed property `NetworkSettings` (object)
            > A summary of the container's network settings


            * Changed property `Networks` (object)

##### `POST` /services/create


###### Request:

Changed content type : `application/json`

* Changed property `Networks` (array)
    > Specifies which networks the service should attach to.
    > 
    > Deprecated: This field is deprecated since v1.44. The Networks field in TaskSpec should be used instead.


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


        * Changed property `Privileges` (object)
            > Security options for the container


            * Added property `Seccomp` (object)
                > Options for configuring seccomp on the container


                * Property `Mode` (string)

                    Enum values:

                    * `default`
                    * `unconfined`
                    * `custom`
                * Property `Profile` (string)
                    > The custom seccomp profile as a json object


            * Added property `AppArmor` (object)
                > Options for configuring AppArmor on the container


                * Property `Mode` (string)

                    Enum values:

                    * `default`
                    * `disabled`
            * Added property `NoNewPrivileges` (boolean)
                > Configuration of the no_new_privs bit in the container


        * Changed property `Mounts` (array)
            > Specification for mounts to be added to containers created as part
            > of the service.


            Changed items (object):

            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Added property `ReadOnlyNonRecursive` (boolean)
                    > Make the mount non-recursively read-only, but still leave the mount recursive
                    > (unless NonRecursive is set to `true` in conjunction).
                    > 
                    > Addded in v1.44, before that version all read-only mounts were
                    > non-recursive by default. To match the previous behaviour this
                    > will default to `true` for clients on versions prior to v1.44.


                * Added property `ReadOnlyForceRecursive` (boolean)
                    > Raise an error if the mount cannot be made recursively read-only.


            * Changed property `VolumeOptions` (object)
                > Optional configuration for the `volume` type.


                * Added property `Subpath` (string)
                    > Source path inside the volume. Must be relative without any back traversals.


        * Changed property `HealthCheck` (object)
            > A test to perform to check that the container is healthy.


            * Added property `StartInterval` (integer)
                > The time to wait between checks in nanoseconds during the start period.
                > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


###### Return Type:

Changed response : **201 Created**
> no error


* Changed content type : `application/json`

    * Added property `Warnings` (array)
        > Optional warning message.
        > 
        > FIXME(thaJeztah): this should have "omitempty" in the generated type.


        Items (string):

    * Deleted property `Warning` (string)
        > Optional warning message


##### `POST` /services/{id}/update


###### Request:

Changed content type : `application/json`

* Changed property `Networks` (array)
    > Specifies which networks the service should attach to.
    > 
    > Deprecated: This field is deprecated since v1.44. The Networks field in TaskSpec should be used instead.


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


        * Changed property `Privileges` (object)
            > Security options for the container


            * Added property `Seccomp` (object)
                > Options for configuring seccomp on the container


            * Added property `AppArmor` (object)
                > Options for configuring AppArmor on the container


            * Added property `NoNewPrivileges` (boolean)
                > Configuration of the no_new_privs bit in the container


        * Changed property `Mounts` (array)
            > Specification for mounts to be added to containers created as part
            > of the service.


            Changed items (object):

            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Added property `ReadOnlyNonRecursive` (boolean)
                    > Make the mount non-recursively read-only, but still leave the mount recursive
                    > (unless NonRecursive is set to `true` in conjunction).
                    > 
                    > Addded in v1.44, before that version all read-only mounts were
                    > non-recursive by default. To match the previous behaviour this
                    > will default to `true` for clients on versions prior to v1.44.


                * Added property `ReadOnlyForceRecursive` (boolean)
                    > Raise an error if the mount cannot be made recursively read-only.


            * Changed property `VolumeOptions` (object)
                > Optional configuration for the `volume` type.


                * Added property `Subpath` (string)
                    > Source path inside the volume. Must be relative without any back traversals.


        * Changed property `HealthCheck` (object)
            > A test to perform to check that the container is healthy.


            * Added property `StartInterval` (integer)
                > The time to wait between checks in nanoseconds during the start period.
                > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


##### `GET` /tasks


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `Status` (object)
        > represents the status of a task.


        * Added property `PortStatus` (object)
            > represents the port status of a task's host ports whose service has published host ports


            * Property `Ports` (array)

                Items (object):

                * Property `Name` (string)

                * Property `Protocol` (string)

                    Enum values:

                    * `tcp`
                    * `udp`
                    * `sctp`
                * Property `TargetPort` (integer)
                    > The port inside the container.


                * Property `PublishedPort` (integer)
                    > The port on the swarm hosts.


                * Property `PublishMode` (string)
                    > The mode in which port is published.
                    > 
                    > <p><br /></p>
                    > 
                    > - "ingress" makes the target port accessible on every node,
                    >   regardless of whether there is a task for the service running on
                    >   that node or not.
                    > - "host" bypasses the routing mesh and publish the port directly on
                    >   the swarm node where that service is running.


                    Enum values:

                    * `ingress`
                    * `host`
        * Changed property `ContainerStatus` (object)
            > represents the status of a container.


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


            * Changed property `Privileges` (object)
                > Security options for the container


                * Added property `Seccomp` (object)
                    > Options for configuring seccomp on the container


                * Added property `AppArmor` (object)
                    > Options for configuring AppArmor on the container


                * Added property `NoNewPrivileges` (boolean)
                    > Configuration of the no_new_privs bit in the container


            * Changed property `Mounts` (array)
                > Specification for mounts to be added to containers created as part
                > of the service.


                Changed items (object):

                * Changed property `BindOptions` (object)
                    > Optional configuration for the `bind` type.


                    * Added property `ReadOnlyNonRecursive` (boolean)
                        > Make the mount non-recursively read-only, but still leave the mount recursive
                        > (unless NonRecursive is set to `true` in conjunction).
                        > 
                        > Addded in v1.44, before that version all read-only mounts were
                        > non-recursive by default. To match the previous behaviour this
                        > will default to `true` for clients on versions prior to v1.44.


                    * Added property `ReadOnlyForceRecursive` (boolean)
                        > Raise an error if the mount cannot be made recursively read-only.


                * Changed property `VolumeOptions` (object)
                    > Optional configuration for the `volume` type.


                    * Added property `Subpath` (string)
                        > Source path inside the volume. Must be relative without any back traversals.


            * Changed property `HealthCheck` (object)
                > A test to perform to check that the container is healthy.


                * Added property `StartInterval` (integer)
                    > The time to wait between checks in nanoseconds during the start period.
                    > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


##### `GET` /tasks/{id}


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Changed property `Status` (object)
        > represents the status of a task.


        * Added property `PortStatus` (object)
            > represents the port status of a task's host ports whose service has published host ports


        * Changed property `ContainerStatus` (object)
            > represents the status of a container.


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


            * Changed property `Privileges` (object)
                > Security options for the container


                * Added property `Seccomp` (object)
                    > Options for configuring seccomp on the container


                * Added property `AppArmor` (object)
                    > Options for configuring AppArmor on the container


                * Added property `NoNewPrivileges` (boolean)
                    > Configuration of the no_new_privs bit in the container


            * Changed property `Mounts` (array)
                > Specification for mounts to be added to containers created as part
                > of the service.


                Changed items (object):

                * Changed property `BindOptions` (object)
                    > Optional configuration for the `bind` type.


                    * Added property `ReadOnlyNonRecursive` (boolean)
                        > Make the mount non-recursively read-only, but still leave the mount recursive
                        > (unless NonRecursive is set to `true` in conjunction).
                        > 
                        > Addded in v1.44, before that version all read-only mounts were
                        > non-recursive by default. To match the previous behaviour this
                        > will default to `true` for clients on versions prior to v1.44.


                    * Added property `ReadOnlyForceRecursive` (boolean)
                        > Raise an error if the mount cannot be made recursively read-only.


                * Changed property `VolumeOptions` (object)
                    > Optional configuration for the `volume` type.


                    * Added property `Subpath` (string)
                        > Source path inside the volume. Must be relative without any back traversals.


            * Changed property `HealthCheck` (object)
                > A test to perform to check that the container is healthy.


                * Added property `StartInterval` (integer)
                    > The time to wait between checks in nanoseconds during the start period.
                    > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


##### `GET` /info


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    * Added property `CDISpecDirs` (array)
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


        Items (string):

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
            > 
            > Deprecated: This field is deprecated since v1.44. The Networks field in TaskSpec should be used instead.


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


                * Changed property `Privileges` (object)
                    > Security options for the container


                    * Added property `Seccomp` (object)
                        > Options for configuring seccomp on the container


                    * Added property `AppArmor` (object)
                        > Options for configuring AppArmor on the container


                    * Added property `NoNewPrivileges` (boolean)
                        > Configuration of the no_new_privs bit in the container


                * Changed property `Mounts` (array)
                    > Specification for mounts to be added to containers created as part
                    > of the service.


                    Changed items (object):

                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Added property `ReadOnlyNonRecursive` (boolean)
                            > Make the mount non-recursively read-only, but still leave the mount recursive
                            > (unless NonRecursive is set to `true` in conjunction).
                            > 
                            > Addded in v1.44, before that version all read-only mounts were
                            > non-recursive by default. To match the previous behaviour this
                            > will default to `true` for clients on versions prior to v1.44.


                        * Added property `ReadOnlyForceRecursive` (boolean)
                            > Raise an error if the mount cannot be made recursively read-only.


                    * Changed property `VolumeOptions` (object)
                        > Optional configuration for the `volume` type.


                        * Added property `Subpath` (string)
                            > Source path inside the volume. Must be relative without any back traversals.


                * Changed property `HealthCheck` (object)
                    > A test to perform to check that the container is healthy.


                    * Added property `StartInterval` (integer)
                        > The time to wait between checks in nanoseconds during the start period.
                        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


* Changed content type : `text/plain`

    Changed items (object):

    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


        * Changed property `Networks` (array)
            > Specifies which networks the service should attach to.
            > 
            > Deprecated: This field is deprecated since v1.44. The Networks field in TaskSpec should be used instead.


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


                * Changed property `Privileges` (object)
                    > Security options for the container


                    * Added property `Seccomp` (object)
                        > Options for configuring seccomp on the container


                    * Added property `AppArmor` (object)
                        > Options for configuring AppArmor on the container


                    * Added property `NoNewPrivileges` (boolean)
                        > Configuration of the no_new_privs bit in the container


                * Changed property `Mounts` (array)
                    > Specification for mounts to be added to containers created as part
                    > of the service.


                    Changed items (object):

                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Added property `ReadOnlyNonRecursive` (boolean)
                            > Make the mount non-recursively read-only, but still leave the mount recursive
                            > (unless NonRecursive is set to `true` in conjunction).
                            > 
                            > Addded in v1.44, before that version all read-only mounts were
                            > non-recursive by default. To match the previous behaviour this
                            > will default to `true` for clients on versions prior to v1.44.


                        * Added property `ReadOnlyForceRecursive` (boolean)
                            > Raise an error if the mount cannot be made recursively read-only.


                    * Changed property `VolumeOptions` (object)
                        > Optional configuration for the `volume` type.


                        * Added property `Subpath` (string)
                            > Source path inside the volume. Must be relative without any back traversals.


                * Changed property `HealthCheck` (object)
                    > A test to perform to check that the container is healthy.


                    * Added property `StartInterval` (integer)
                        > The time to wait between checks in nanoseconds during the start period.
                        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


##### `GET` /services/{id}


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


        * Changed property `Networks` (array)
            > Specifies which networks the service should attach to.
            > 
            > Deprecated: This field is deprecated since v1.44. The Networks field in TaskSpec should be used instead.


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


                * Changed property `Privileges` (object)
                    > Security options for the container


                    * Added property `Seccomp` (object)
                        > Options for configuring seccomp on the container


                    * Added property `AppArmor` (object)
                        > Options for configuring AppArmor on the container


                    * Added property `NoNewPrivileges` (boolean)
                        > Configuration of the no_new_privs bit in the container


                * Changed property `Mounts` (array)
                    > Specification for mounts to be added to containers created as part
                    > of the service.


                    Changed items (object):

                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Added property `ReadOnlyNonRecursive` (boolean)
                            > Make the mount non-recursively read-only, but still leave the mount recursive
                            > (unless NonRecursive is set to `true` in conjunction).
                            > 
                            > Addded in v1.44, before that version all read-only mounts were
                            > non-recursive by default. To match the previous behaviour this
                            > will default to `true` for clients on versions prior to v1.44.


                        * Added property `ReadOnlyForceRecursive` (boolean)
                            > Raise an error if the mount cannot be made recursively read-only.


                    * Changed property `VolumeOptions` (object)
                        > Optional configuration for the `volume` type.


                        * Added property `Subpath` (string)
                            > Source path inside the volume. Must be relative without any back traversals.


                * Changed property `HealthCheck` (object)
                    > A test to perform to check that the container is healthy.


                    * Added property `StartInterval` (integer)
                        > The time to wait between checks in nanoseconds during the start period.
                        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


* Changed content type : `text/plain`

    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


        * Changed property `Networks` (array)
            > Specifies which networks the service should attach to.
            > 
            > Deprecated: This field is deprecated since v1.44. The Networks field in TaskSpec should be used instead.


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


                * Changed property `Privileges` (object)
                    > Security options for the container


                    * Added property `Seccomp` (object)
                        > Options for configuring seccomp on the container


                    * Added property `AppArmor` (object)
                        > Options for configuring AppArmor on the container


                    * Added property `NoNewPrivileges` (boolean)
                        > Configuration of the no_new_privs bit in the container


                * Changed property `Mounts` (array)
                    > Specification for mounts to be added to containers created as part
                    > of the service.


                    Changed items (object):

                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Added property `ReadOnlyNonRecursive` (boolean)
                            > Make the mount non-recursively read-only, but still leave the mount recursive
                            > (unless NonRecursive is set to `true` in conjunction).
                            > 
                            > Addded in v1.44, before that version all read-only mounts were
                            > non-recursive by default. To match the previous behaviour this
                            > will default to `true` for clients on versions prior to v1.44.


                        * Added property `ReadOnlyForceRecursive` (boolean)
                            > Raise an error if the mount cannot be made recursively read-only.


                    * Changed property `VolumeOptions` (object)
                        > Optional configuration for the `volume` type.


                        * Added property `Subpath` (string)
                            > Source path inside the volume. Must be relative without any back traversals.


                * Changed property `HealthCheck` (object)
                    > A test to perform to check that the container is healthy.


                    * Added property `StartInterval` (integer)
                        > The time to wait between checks in nanoseconds during the start period.
                        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.



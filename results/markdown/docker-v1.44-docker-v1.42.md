#### What's Changed
---

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


##### `POST` /networks/create


###### Request:

Changed content type : `application/json`

* Changed property `CheckDuplicate` (boolean)
    > Check for networks with duplicate names. Since Network is
    > primarily keyed based on a random ID and not on the name, and
    > network name is strictly a user-friendly alias to the network
    > which is uniquely identified using ID, there is no guaranteed
    > way to check for duplicates. CheckDuplicate is there to provide
    > a best effort checking of any networks which has the same name
    > but it is not guaranteed to catch all name collisions.


###### Return Type:

Changed response : **403 Forbidden**
> operation not supported for pre-defined networks

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


* Changed property `Healthcheck` (object)
    > A test to perform to check that the container is healthy.


    * Deleted property `StartInterval` (integer)
        > The time to wait between checks in nanoseconds during the start period.
        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


* Changed property `HostConfig` (object)
    > A container's resources (cgroups config, ulimits, etc)


    * Deleted property `Annotations` (object)
        > Arbitrary non-identifying metadata attached to container and
        > provided to the runtime when the container is started.


    * Changed property `Mounts` (array)
        > Specification for mounts to be added to the container.


        Changed items (object):

        * Changed property `BindOptions` (object)
            > Optional configuration for the `bind` type.


            * Deleted property `ReadOnlyNonRecursive` (boolean)
                > Make the mount non-recursively read-only, but still leave the mount recursive
                > (unless NonRecursive is set to true in conjunction).


            * Deleted property `ReadOnlyForceRecursive` (boolean)
                > Raise an error if the mount cannot be made recursively read-only.


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


    * Deleted property `Annotations` (object)
        > Arbitrary non-identifying metadata attached to container and
        > provided to the runtime when the container is started.


    * Changed property `Mounts` (array)
        > Specification for mounts to be added to the container.


        Changed items (object):

        * Changed property `BindOptions` (object)
            > Optional configuration for the `bind` type.


            * Deleted property `ReadOnlyNonRecursive` (boolean)
                > Make the mount non-recursively read-only, but still leave the mount recursive
                > (unless NonRecursive is set to true in conjunction).


            * Deleted property `ReadOnlyForceRecursive` (boolean)
                > Raise an error if the mount cannot be made recursively read-only.


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


        * Deleted property `Annotations` (object)
            > Arbitrary non-identifying metadata attached to container and
            > provided to the runtime when the container is started.


        * Changed property `Mounts` (array)
            > Specification for mounts to be added to the container.


            Changed items (object):

            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Deleted property `ReadOnlyNonRecursive` (boolean)
                    > Make the mount non-recursively read-only, but still leave the mount recursive
                    > (unless NonRecursive is set to true in conjunction).


                * Deleted property `ReadOnlyForceRecursive` (boolean)
                    > Raise an error if the mount cannot be made recursively read-only.


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

    * Changed property `Created` (string -> string)
        > Date and time at which the image was created, formatted in
        > [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.


    * Changed property `Container` (string)
        > The ID of the container that was used to create the image.
        > 
        > Depending on how the image was created, this field may be empty.


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


    * Changed property `ContainerConfig` (object)
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


##### `GET` /system/df


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


    * Changed property `Containers` (array)

        Changed items (object):

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

            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Deleted property `ReadOnlyNonRecursive` (boolean)
                    > Make the mount non-recursively read-only, but still leave the mount recursive
                    > (unless NonRecursive is set to true in conjunction).


                * Deleted property `ReadOnlyForceRecursive` (boolean)
                    > Raise an error if the mount cannot be made recursively read-only.


        * Changed property `HealthCheck` (object)
            > A test to perform to check that the container is healthy.


            * Deleted property `StartInterval` (integer)
                > The time to wait between checks in nanoseconds during the start period.
                > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


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

            * Changed property `BindOptions` (object)
                > Optional configuration for the `bind` type.


                * Deleted property `ReadOnlyNonRecursive` (boolean)
                    > Make the mount non-recursively read-only, but still leave the mount recursive
                    > (unless NonRecursive is set to true in conjunction).


                * Deleted property `ReadOnlyForceRecursive` (boolean)
                    > Raise an error if the mount cannot be made recursively read-only.


        * Changed property `HealthCheck` (object)
            > A test to perform to check that the container is healthy.


            * Deleted property `StartInterval` (integer)
                > The time to wait between checks in nanoseconds during the start period.
                > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


##### `GET` /tasks


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    Changed items (object):

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

                * Changed property `BindOptions` (object)
                    > Optional configuration for the `bind` type.


                    * Deleted property `ReadOnlyNonRecursive` (boolean)
                        > Make the mount non-recursively read-only, but still leave the mount recursive
                        > (unless NonRecursive is set to true in conjunction).


                    * Deleted property `ReadOnlyForceRecursive` (boolean)
                        > Raise an error if the mount cannot be made recursively read-only.


            * Changed property `HealthCheck` (object)
                > A test to perform to check that the container is healthy.


                * Deleted property `StartInterval` (integer)
                    > The time to wait between checks in nanoseconds during the start period.
                    > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


##### `GET` /tasks/{id}


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

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

                * Changed property `BindOptions` (object)
                    > Optional configuration for the `bind` type.


                    * Deleted property `ReadOnlyNonRecursive` (boolean)
                        > Make the mount non-recursively read-only, but still leave the mount recursive
                        > (unless NonRecursive is set to true in conjunction).


                    * Deleted property `ReadOnlyForceRecursive` (boolean)
                        > Raise an error if the mount cannot be made recursively read-only.


            * Changed property `HealthCheck` (object)
                > A test to perform to check that the container is healthy.


                * Deleted property `StartInterval` (integer)
                    > The time to wait between checks in nanoseconds during the start period.
                    > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


##### `GET` /info


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

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


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


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

                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Deleted property `ReadOnlyNonRecursive` (boolean)
                            > Make the mount non-recursively read-only, but still leave the mount recursive
                            > (unless NonRecursive is set to true in conjunction).


                        * Deleted property `ReadOnlyForceRecursive` (boolean)
                            > Raise an error if the mount cannot be made recursively read-only.


                * Changed property `HealthCheck` (object)
                    > A test to perform to check that the container is healthy.


                    * Deleted property `StartInterval` (integer)
                        > The time to wait between checks in nanoseconds during the start period.
                        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


* Changed content type : `text/plain`

    Changed items (object):

    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


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

                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Deleted property `ReadOnlyNonRecursive` (boolean)
                            > Make the mount non-recursively read-only, but still leave the mount recursive
                            > (unless NonRecursive is set to true in conjunction).


                        * Deleted property `ReadOnlyForceRecursive` (boolean)
                            > Raise an error if the mount cannot be made recursively read-only.


                * Changed property `HealthCheck` (object)
                    > A test to perform to check that the container is healthy.


                    * Deleted property `StartInterval` (integer)
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

                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Deleted property `ReadOnlyNonRecursive` (boolean)
                            > Make the mount non-recursively read-only, but still leave the mount recursive
                            > (unless NonRecursive is set to true in conjunction).


                        * Deleted property `ReadOnlyForceRecursive` (boolean)
                            > Raise an error if the mount cannot be made recursively read-only.


                * Changed property `HealthCheck` (object)
                    > A test to perform to check that the container is healthy.


                    * Deleted property `StartInterval` (integer)
                        > The time to wait between checks in nanoseconds during the start period.
                        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.


* Changed content type : `text/plain`

    * Changed property `Spec` (object)
        > User modifiable configuration for a service.


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

                    * Changed property `BindOptions` (object)
                        > Optional configuration for the `bind` type.


                        * Deleted property `ReadOnlyNonRecursive` (boolean)
                            > Make the mount non-recursively read-only, but still leave the mount recursive
                            > (unless NonRecursive is set to true in conjunction).


                        * Deleted property `ReadOnlyForceRecursive` (boolean)
                            > Raise an error if the mount cannot be made recursively read-only.


                * Changed property `HealthCheck` (object)
                    > A test to perform to check that the container is healthy.


                    * Deleted property `StartInterval` (integer)
                        > The time to wait between checks in nanoseconds during the start period.
                        > It should be 0 or at least 1000000 (1 ms). 0 means inherit.



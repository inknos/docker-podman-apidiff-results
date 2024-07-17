#### What's Changed
---

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



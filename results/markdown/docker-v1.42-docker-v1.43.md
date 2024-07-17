#### What's Changed
---

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
##### `GET` /images/json


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


##### `POST` /containers/create


###### Request:

Changed content type : `application/json`

* Changed property `HostConfig` (object)
    > A container's resources (cgroups config, ulimits, etc)


    * Added property `Annotations` (object)
        > Arbitrary non-identifying metadata attached to container and
        > provided to the runtime when the container is started.


Changed content type : `application/octet-stream`

* Changed property `HostConfig` (object)
    > A container's resources (cgroups config, ulimits, etc)


    * Added property `Annotations` (object)
        > Arbitrary non-identifying metadata attached to container and
        > provided to the runtime when the container is started.


##### `GET` /containers/{id}/json


###### Return Type:

Changed response : **200 OK**
> no error


* Changed content type : `application/json`

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


##### `GET` /info


###### Return Type:

Changed response : **200 OK**
> No error


* Changed content type : `application/json`

    * Changed property `SecurityOptions` (array)
        > List of security features that are enabled on the daemon, such as
        > apparmor, seccomp, SELinux, user-namespaces (userns), rootless and
        > no-new-privileges.
        > 
        > Additional configuration options for each security feature may
        > be present, and are included as a comma-separated list of key/value
        > pairs.



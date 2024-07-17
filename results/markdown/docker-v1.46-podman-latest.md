#### What's New
---

##### `GET` /libpod/_ping

> Ping service


##### `POST` /libpod/build

> Create image


##### `POST` /libpod/commit

> Commit


##### `DELETE` /libpod/containers/{name}

> Delete container


##### `GET` /libpod/containers/{name}/archive

> Copy files from a container


##### `PUT` /libpod/containers/{name}/archive

> Copy files into a container


##### `POST` /libpod/containers/{name}/attach

> Attach to a container


##### `GET` /libpod/containers/{name}/changes

> Report on changes to container's filesystem; adds, deletes or modifications.


##### `POST` /libpod/containers/{name}/checkpoint

> Checkpoint a container


##### `POST` /libpod/containers/{name}/exec

> Create an exec instance


##### `GET` /libpod/containers/{name}/exists

> Check if container exists


##### `GET` /libpod/containers/{name}/export

> Export a container


##### `GET` /libpod/containers/{name}/healthcheck

> Run a container's healthcheck


##### `POST` /libpod/containers/{name}/init

> Initialize a container


##### `GET` /libpod/containers/{name}/json

> Inspect container


##### `POST` /libpod/containers/{name}/kill

> Kill container


##### `GET` /libpod/containers/{name}/logs

> Get container logs


##### `POST` /libpod/containers/{name}/mount

> Mount a container


##### `POST` /libpod/containers/{name}/pause

> Pause a container


##### `POST` /libpod/containers/{name}/rename

> Rename an existing container


##### `POST` /libpod/containers/{name}/resize

> Resize a container's TTY


##### `POST` /libpod/containers/{name}/restart

> Restart a container


##### `POST` /libpod/containers/{name}/restore

> Restore a container


##### `POST` /libpod/containers/{name}/start

> Start a container


##### `GET` /libpod/containers/{name}/stats

> Get stats for a container


##### `POST` /libpod/containers/{name}/stop

> Stop a container


##### `GET` /libpod/containers/{name}/top

> List processes


##### `POST` /libpod/containers/{name}/unmount

> Unmount a container


##### `POST` /libpod/containers/{name}/unpause

> Unpause Container


##### `POST` /libpod/containers/{name}/update

> Update an existing containers cgroup configuration


##### `POST` /libpod/containers/{name}/wait

> Wait on a container


##### `POST` /libpod/containers/create

> Create a container


##### `GET` /libpod/containers/json

> List containers


##### `POST` /libpod/containers/prune

> Delete stopped containers


##### `GET` /libpod/containers/showmounted

> Show mounted containers


##### `GET` /libpod/containers/stats

> Get stats for one or more containers


##### `GET` /libpod/events

> Get events


##### `GET` /libpod/exec/{id}/json

> Inspect an exec instance


##### `POST` /libpod/exec/{id}/resize

> Resize an exec instance


##### `POST` /libpod/exec/{id}/start

> Start an exec instance


##### `GET` /libpod/generate/{name}/systemd

> Generate Systemd Units


##### `GET` /libpod/generate/kube

> Generate a Kubernetes YAML file.


##### `DELETE` /libpod/images/{name}

> Remove an image from the local storage.


##### `GET` /libpod/images/{name}/changes

> Report on changes to images's filesystem; adds, deletes or modifications.


##### `GET` /libpod/images/{name}/exists

> Image exists


##### `GET` /libpod/images/{name}/get

> Export an image


##### `GET` /libpod/images/{name}/history

> History of an image


##### `GET` /libpod/images/{name}/json

> Inspect an image


##### `POST` /libpod/images/{name}/push

> Push Image


##### `GET` /libpod/images/{name}/resolve

> Resolve an image (short) name


##### `POST` /libpod/images/{name}/tag

> Tag an image


##### `GET` /libpod/images/{name}/tree

> Image tree


##### `POST` /libpod/images/{name}/untag

> Untag an image


##### `GET` /libpod/images/export

> Export multiple images


##### `POST` /libpod/images/import

> Import image


##### `GET` /libpod/images/json

> List Images


##### `POST` /libpod/images/load

> Load image


##### `POST` /libpod/images/prune

> Prune unused images


##### `POST` /libpod/images/pull

> Pull images


##### `DELETE` /libpod/images/remove

> Remove one or more images from the storage.


##### `POST` /libpod/images/scp/{name}

> Copy an image from one host to another


##### `GET` /libpod/images/search

> Search images


##### `GET` /libpod/info

> Get info


##### `POST` /libpod/kube/apply

> Apply a podman workload or Kubernetes YAML file.


##### `PUT` /libpod/manifests/{name}

> Modify manifest list


##### `POST` /libpod/manifests/{name}

> Create


##### `DELETE` /libpod/manifests/{name}

> Delete manifest list


##### `POST` /libpod/manifests/{name}/add

> Add image


##### `GET` /libpod/manifests/{name}/exists

> Exists


##### `GET` /libpod/manifests/{name}/json

> Inspect


##### `POST` /libpod/manifests/{name}/push

> Push manifest to registry


##### `POST` /libpod/manifests/{name}/registry/{destination}

> Push manifest list to registry


##### `DELETE` /libpod/networks/{name}

> Remove a network


##### `POST` /libpod/networks/{name}/connect

> Connect container to network


##### `POST` /libpod/networks/{name}/disconnect

> Disconnect container from network


##### `GET` /libpod/networks/{name}/exists

> Network exists


##### `GET` /libpod/networks/{name}/json

> Inspect a network


##### `POST` /libpod/networks/{name}/update

> Update existing podman network


##### `POST` /libpod/networks/create

> Create network


##### `GET` /libpod/networks/json

> List networks


##### `POST` /libpod/networks/prune

> Delete unused networks


##### `POST` /libpod/play/kube

> Play a Kubernetes YAML file.


##### `DELETE` /libpod/play/kube

> Remove resources created from kube play


##### `DELETE` /libpod/pods/{name}

> Remove pod


##### `GET` /libpod/pods/{name}/exists

> Pod exists


##### `GET` /libpod/pods/{name}/json

> Inspect pod


##### `POST` /libpod/pods/{name}/kill

> Kill a pod


##### `POST` /libpod/pods/{name}/pause

> Pause a pod


##### `POST` /libpod/pods/{name}/restart

> Restart a pod


##### `POST` /libpod/pods/{name}/start

> Start a pod


##### `POST` /libpod/pods/{name}/stop

> Stop a pod


##### `GET` /libpod/pods/{name}/top

> List processes


##### `POST` /libpod/pods/{name}/unpause

> Unpause a pod


##### `POST` /libpod/pods/create

> Create a pod


##### `GET` /libpod/pods/json

> List pods


##### `POST` /libpod/pods/prune

> Prune unused pods


##### `GET` /libpod/pods/stats

> Statistics for one or more pods


##### `DELETE` /libpod/secrets/{name}

> Remove secret


##### `GET` /libpod/secrets/{name}/exists

> Secret exists


##### `GET` /libpod/secrets/{name}/json

> Inspect secret


##### `POST` /libpod/secrets/create

> Create a secret


##### `GET` /libpod/secrets/json

> List secrets


##### `POST` /libpod/system/check

> Performs consistency checks on storage, optionally removing items which fail checks


##### `GET` /libpod/system/df

> Show disk usage


##### `POST` /libpod/system/prune

> Prune unused data


##### `GET` /libpod/version

> Component Version information


##### `DELETE` /libpod/volumes/{name}

> Remove volume


##### `GET` /libpod/volumes/{name}/exists

> Volume exists


##### `GET` /libpod/volumes/{name}/json

> Inspect volume


##### `POST` /libpod/volumes/create

> Create a volume


##### `GET` /libpod/volumes/json

> List volumes


##### `POST` /libpod/volumes/prune

> Prune volumes


#### What's Deleted
---

##### `GET` /containers/{id}/changes

> Get changes on a container’s filesystem


##### `GET` /containers/{id}/attach/ws

> Attach to a container via a websocket


##### `POST` /build/prune

> Delete builder cache


##### `GET` /_ping

> Ping


##### `HEAD` /_ping

> Ping


##### `GET` /plugins

> List plugins


##### `GET` /plugins/privileges

> Get plugin privileges


##### `POST` /plugins/pull

> Install a plugin


##### `GET` /plugins/{name}/json

> Inspect a plugin


##### `DELETE` /plugins/{name}

> Remove a plugin


##### `POST` /plugins/{name}/enable

> Enable a plugin


##### `POST` /plugins/{name}/disable

> Disable a plugin


##### `POST` /plugins/{name}/upgrade

> Upgrade a plugin


##### `POST` /plugins/create

> Create a plugin


##### `POST` /plugins/{name}/push

> Push a plugin


##### `POST` /plugins/{name}/set

> Configure a plugin


##### `GET` /nodes

> List nodes


##### `GET` /nodes/{id}

> Inspect a node


##### `DELETE` /nodes/{id}

> Delete a node


##### `POST` /nodes/{id}/update

> Update a node


##### `GET` /swarm

> Inspect swarm


##### `POST` /swarm/init

> Initialize a new swarm


##### `POST` /swarm/join

> Join an existing swarm


##### `POST` /swarm/leave

> Leave a swarm


##### `POST` /swarm/update

> Update a swarm


##### `GET` /swarm/unlockkey

> Get the unlock key


##### `POST` /swarm/unlock

> Unlock a locked manager


##### `GET` /services

> List services


##### `POST` /services/create

> Create a service


##### `GET` /services/{id}

> Inspect a service


##### `DELETE` /services/{id}

> Delete a service


##### `POST` /services/{id}/update

> Update a service


##### `GET` /services/{id}/logs

> Get service logs


##### `GET` /tasks

> List tasks


##### `GET` /tasks/{id}

> Inspect a task


##### `GET` /tasks/{id}/logs

> Get task logs


##### `POST` /secrets/{id}/update

> Update a Secret


##### `GET` /configs

> List configs


##### `POST` /configs/create

> Create a config


##### `GET` /configs/{id}

> Inspect a config


##### `DELETE` /configs/{id}

> Delete a config


##### `POST` /configs/{id}/update

> Update a Config


##### `GET` /distribution/{name}/json

> Get image information from the registry


##### `POST` /session

> Initialize interactive session


##### `HEAD` /containers/{name}/archive

> Get information about files in a container


##### `PUT` /volumes/{name}

> "Update a volume. Valid only for Swarm cluster volumes"


#### What's Changed
---

##### `GET` /containers/{id}/logs


###### Parameters:

Changed: `stdout` in `query`
> Return logs from stdout


Changed: `stderr` in `query`
> Return logs from stderr


Changed: `since` in `query`
> Only return logs since this time, as a UNIX timestamp


Changed: `until` in `query`
> Only return logs before this time, as a UNIX timestamp


Changed: `tail` in `query`
> Only return this number of log lines from the end of the logs


###### Return Type:

Changed response : **200 OK**
> logs returned as a stream in response body.


* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

Changed response : **404 Not Found**
> No such container


* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

* Changed content type : `application/json`

Changed response : **500 Internal Server Error**
> Internal server error


* New content type : `application/json`

* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

##### `GET` /containers/{id}/export


###### Parameters:

Added: `name` in `path`
> the name or ID of the container


Deleted: `id` in `path`
> ID or name of the container


###### Return Type:

Changed response : **200 OK**
> tarball is returned in body

Changed response : **404 Not Found**
> No such container


* Deleted content type : `application/octet-stream`

* Changed content type : `application/json`

Changed response : **500 Internal Server Error**
> Internal server error


* New content type : `application/json`

* Deleted content type : `application/octet-stream`

##### `POST` /containers/{id}/resize

> Resize a container's TTY


###### Parameters:

Added: `running` in `query`
> Ignore containers not running errors


Changed: `h` in `query`
> Height to set for the terminal, in characters


Changed: `w` in `query`
> Width to set for the terminal, in characters


###### Return Type:

Changed response : **200 OK**
> Success


* New content type : `application/json`

Changed response : **404 Not Found**
> No such container


* Deleted content type : `text/plain`

* Changed content type : `application/json`

Changed response : **500 Internal Server Error**
> Internal server error


* New content type : `application/json`

* Deleted content type : `text/plain`

##### `POST` /containers/{id}/attach


###### Parameters:

Changed: `detachKeys` in `query`
> keys to use for detaching from the container


Changed: `logs` in `query`
> Stream all logs from the container across the connection. Happens before streaming attach (if requested). At least one of logs or stream must be set


Changed: `stream` in `query`
> Attach to the container. If unset, and logs is set, only the container's logs will be sent. At least one of stream or logs must be set


Changed: `stdin` in `query`
> Attach to container STDIN


Changed: `stdout` in `query`
> Attach to container STDOUT


Changed: `stderr` in `query`
> Attach to container STDERR


###### Return Type:

Deleted response : **200 OK**
> no error, no upgrade header found

Changed response : **101 Switching Protocols**
> No error, connection has been hijacked for transporting streams.

Changed response : **400 Bad Request**
> Bad parameter in request


* New content type : `application/json`

* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

Changed response : **404 Not Found**
> No such container


* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

* Changed content type : `application/json`

Changed response : **500 Internal Server Error**
> Internal server error


* New content type : `application/json`

* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

##### `GET` /images/get


###### Parameters:

Changed: `names` in `query`
> one or more image names or IDs comma separated


###### Return Type:

Changed response : **200 OK**
> no error


* New content type : `application/json`

* Deleted content type : `application/x-tar`

Changed response : **500 Internal Server Error**
> Internal server error


* New content type : `application/json`

* Deleted content type : `application/x-tar`

##### `POST` /exec/{id}/start


###### Request:
> Attributes for start


New content type : `application/x-tar`

Changed content type : `application/json`

* Deleted property `ConsoleSize` (array)
    > Initial console size, as an `[height, width]` array.


* Changed property `Detach` (boolean)
    > Detach from the command. Not presently supported.


* Changed property `Tty` (boolean)
    > Allocate a pseudo-TTY. Presently ignored.


###### Return Type:

New response : **500 Internal Server Error**
> Internal server error

Changed response : **200 OK**
> no error

Changed response : **404 Not Found**
> No such exec instance


* New content type : `application/octet-stream`

* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

Changed response : **409 Conflict**
> container is not running


* Deleted content type : `application/vnd.docker.raw-stream`

* Deleted content type : `application/vnd.docker.multiplexed-stream`

##### `GET` /containers/{id}/top


###### Parameters:

Changed: `ps_args` in `query`
> arguments to pass to ps such as aux.


###### Return Type:

Changed response : **200 OK**
> List processes in container


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New required properties:
    - `Processes`
    - `Titles`

    * Changed property `Processes` (array)
        > Each process running in the container, where each is process
        > is an array of values corresponding to the titles.


Changed response : **404 Not Found**
> No such container


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `GET` /containers/{id}/stats

> Get stats for a container


###### Parameters:

Changed: `stream` in `query`
> Stream the output


Changed: `one-shot` in `query`
> Provide a one-shot response in which preCPU stats are blank, resulting in a single cycle return.


###### Return Type:

Changed response : **404 Not Found**
> No such container


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /containers/{id}/start


###### Parameters:

Changed: `detachKeys` in `query`
> Override the key sequence for detaching a container. Format is a single character [a-Z] or ctrl-<value> where <value> is one of: a-z, @, ^, [, , or _.


###### Return Type:

Changed response : **304 Not Modified**
> Container already started


* New content type : `application/json`

Changed response : **404 Not Found**
> No such container


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /containers/{id}/stop


###### Parameters:

Deleted: `signal` in `query`
> Signal to send to the container as an integer or string (e.g. `SIGINT`).


Changed: `t` in `query`
> number of seconds to wait before killing container


###### Return Type:

Changed response : **304 Not Modified**
> Container already stopped


* New content type : `application/json`

Changed response : **404 Not Found**
> No such container


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /containers/{id}/restart

> Restart container


###### Parameters:

Deleted: `signal` in `query`
> Signal to send to the container as an integer or string (e.g. `SIGINT`).


Changed: `t` in `query`
> timeout before sending kill signal to container


###### Return Type:

Changed response : **404 Not Found**
> No such container


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /containers/{id}/kill

> Kill container


###### Parameters:

Added: `all` in `query`
> Send kill signal to all containers


Changed: `signal` in `query`
> signal to be sent to container


###### Return Type:

Changed response : **404 Not Found**
> No such container


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **409 Conflict**
> Conflict error in operation


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /containers/{id}/update

> Update configuration of an existing container


###### Parameters:

Added: `name` in `path`
> Full or partial ID or full name of the container to rename


Deleted: `id` in `path`
> ID or name of the container


###### Request:
> attributes for updating the container


New content type : `application/x-tar`

Changed content type : `application/json`

###### Return Type:

Changed response : **200 OK**
> no error


* Deleted content type : `application/json`

Changed response : **404 Not Found**
> No such container


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /containers/{id}/rename

> Rename an existing container


###### Parameters:

Added: `name` in `path`
> Full or partial ID or full name of the container to rename


Deleted: `id` in `path`
> ID or name of the container


###### Return Type:

Changed response : **404 Not Found**
> No such container


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **409 Conflict**
> Conflict error in operation


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /containers/{id}/pause

> Pause container


###### Parameters:

Added: `name` in `path`
> the name or ID of the container


Deleted: `id` in `path`
> ID or name of the container


###### Return Type:

Changed response : **404 Not Found**
> No such container


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /containers/{id}/unpause

> Unpause container


###### Parameters:

Added: `name` in `path`
> the name or ID of the container


Deleted: `id` in `path`
> ID or name of the container


###### Return Type:

Changed response : **404 Not Found**
> No such container


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /containers/{id}/wait

> Wait on a container


###### Parameters:

Added: `interval` in `query`
> Time Interval to wait before polling for completion.


Changed: `condition` in `query`
> wait until container is to a given condition. default is stopped. valid conditions are:
>   - configured
>   - created
>   - exited
>   - paused
>   - running
>   - stopped


###### Return Type:

Deleted response : **400 Bad Request**
> bad parameter

Changed response : **200 OK**
> Wait container


* Changed content type : `application/json`

    New optional properties:
    - `StatusCode`

    * Changed property `StatusCode` (integer)
        > container exit code


    * Changed property `Error` (object)

        * Changed property `Message` (string)

Changed response : **404 Not Found**
> No such container


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `DELETE` /containers/{id}


###### Parameters:

Changed: `v` in `query`
> Remove the volumes associated with the container.


Changed: `link` in `query`
> not supported


###### Return Type:

Changed response : **400 Bad Request**
> Bad parameter in request


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **404 Not Found**
> No such container


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **409 Conflict**
> Conflict error in operation


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `GET` /containers/{id}/archive

> Get files from a container


###### Parameters:

Changed: `path` in `query`
> Path to a directory in the container to extract


###### Return Type:

Changed response : **200 OK**
> no error


* New content type : `application/json`

Changed response : **400 Bad Request**
> Bad parameter in request


* New content type : `application/json`

* Deleted content type : `application/x-tar`

Changed response : **404 Not Found**
> No such container


* Deleted content type : `application/x-tar`

* Changed content type : `application/json`

Changed response : **500 Internal Server Error**
> Internal server error


* New content type : `application/json`

* Deleted content type : `application/x-tar`

##### `PUT` /containers/{id}/archive

> Put files into a container


###### Parameters:

Changed: `path` in `query`
> Path to a directory in the container to extract


Changed: `noOverwriteDirNonDir` in `query`
> if unpacking the given content would cause an existing directory to be replaced with a non-directory and vice versa (1 or true)


Changed: `copyUIDGID` in `query`
> copy UID/GID maps to the dest file or di (1 or true)


###### Request:
> tarfile of files to copy into the container


New content type : `application/json`

Deleted content type : `application/octet-stream`

Changed content type : `application/x-tar`

###### Return Type:

Changed response : **200 OK**
> no error

Changed response : **403 Forbidden**
> the container rootfs is read-only


* Deleted content type : `application/json`

* Deleted content type : `text/plain`

Changed response : **400 Bad Request**
> Bad parameter in request


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **404 Not Found**
> No such container


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /containers/prune


###### Parameters:

Changed: `filters` in `query`
> Filters to process on the prune list, encoded as JSON (a `map[string][]string`).  Available filters:
>  - `until=<timestamp>` Prune containers created before this timestamp. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon machine’s time.
>  - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune containers with (or without, in case `label!=...` is used) the specified labels.


###### Return Type:

Changed response : **200 OK**
> Prune Containers


* Changed content type : `application/json`

Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `GET` /images/json


###### Parameters:

Deleted: `shared-size` in `query`
> Compute and show shared size as a `SharedSize` field on each image.


Changed: `filters` in `query`
> A JSON encoded value of the filters (a `map[string][]string`) to process on the images list. Available filters:
> - `before`=(`<image-name>[:<tag>]`,  `<image id>` or `<image@digest>`)
> - `dangling=true`
> - `label=key` or `label="key=value"` of an image label
> - `reference`=(`<image-name>[:<tag>]`)
> - `since`=(`<image-name>[:<tag>]`,  `<image id>` or `<image@digest>`)


Changed: `digests` in `query`
> Not supported


###### Return Type:

Changed response : **200 OK**
> Image summary for compat API


* Changed content type : `application/json`

    Changed items (object):
        > Summary summary


    * Changed property `Id` (string)
        > ID is the content-addressable ID of an image.
        >
        > This identifier is a content-addressable digest calculated from the
        > image's configuration (which includes the digests of layers used by
        > the image).
        >
        > Note that this digest differs from the `RepoDigests` below, which
        > holds digests of image manifests that reference the image.


    * Changed property `ParentId` (string)
        > ID of the parent image.
        >
        > Depending on how the image was created, this field may be empty and
        > is only set for images that were built/created locally. This field
        > is empty if the image was pulled from an image registry.


    * Changed property `RepoTags` (array)
        > List of image names/tags in the local image cache that reference this
        > image.
        >
        > Multiple image tags can refer to the same image, and this list may be
        > empty if no tags reference the image, in which case the image is
        > "untagged", in which case it can still be referenced by its ID.


    * Changed property `RepoDigests` (array)
        > List of content-addressable digests of locally available image manifests
        > that the image is referenced from. Multiple manifests can refer to the
        > same image.
        >
        > These digests are usually only available if the image was either pulled
        > from a registry, or if the image was pushed to a registry, which is when
        > the manifest is generated and its digest calculated.


    * Changed property `Created` (integer -> integer)
        > Date and time at which the image was created as a Unix timestamp
        > (number of seconds sinds EPOCH).


    * Changed property `Size` (integer)
        > Total size of the image including all layers it is composed of.


    * Changed property `SharedSize` (integer)
        > Total size of image layers that are shared between this image and other
        > images.
        >
        > This size is not calculated by default. `-1` indicates that the value
        > has not been set / calculated.


    * Changed property `Containers` (integer -> integer)
        > Number of containers using this image. Includes both stopped and running
        > containers.
        >
        > This size is not calculated by default, and depends on which API endpoint
        > is used. `-1` indicates that the value has not been set / calculated.


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /build

> Create image


###### Parameters:

Added: `Content-Type` in `header`

Deleted: `Content-type` in `header`

Deleted: `version` in `query`
> Version of the builder backend to use.
>
> - `1` is the first generation classic (deprecated) builder in the Docker daemon (default)
> - `2` is [BuildKit](https://github.com/moby/buildkit)


Changed: `dockerfile` in `query`
> Path within the build context to the `Dockerfile`.
> This is ignored if remote is specified and points to an external `Dockerfile`.


Changed: `t` in `query`
> A name and optional tag to apply to the image in the `name:tag` format. If you omit the tag, the default latest value is assumed. You can provide several t parameters.


Changed: `extrahosts` in `query`
> TBD Extra hosts to add to /etc/hosts
> (As of version 1.xx)


Changed: `remote` in `query`
> A Git repository URI or HTTP/HTTPS context URI.
> If the URI points to a single text file, the file’s contents are placed
> into a file called Dockerfile and the image is built from that file. If
> the URI points to a tarball, the file is downloaded by the daemon and the
> contents therein used as the context for the build. If the URI points to a
> tarball and the dockerfile parameter is also specified, there must be a file
> with the corresponding path inside the tarball.
> (As of version 1.xx)


Changed: `q` in `query`
> Suppress verbose build output


Changed: `nocache` in `query`
> Do not use the cache when building the image
> (As of version 1.xx)


Changed: `cachefrom` in `query`
> JSON array of images used to build cache resolution
> (As of version 1.xx)


Changed: `pull` in `query`
> Attempt to pull the image even if an older image exists locally
> (As of version 1.xx)


Changed: `rm` in `query`
> Remove intermediate containers after a successful build
> (As of version 1.xx)


Changed: `forcerm` in `query`
> Always remove intermediate containers, even upon failure
> (As of version 1.xx)


Changed: `memory` in `query`
> Memory is the upper limit (in bytes) on how much memory running containers can use
> (As of version 1.xx)


Changed: `memswap` in `query`
> MemorySwap limits the amount of memory and swap together
> (As of version 1.xx)


Changed: `cpushares` in `query`
> CPUShares (relative weight
> (As of version 1.xx)


Changed: `cpusetcpus` in `query`
> CPUSetCPUs in which to allow execution (0-3, 0,1)
> (As of version 1.xx)


Changed: `cpuperiod` in `query`
> CPUPeriod limits the CPU CFS (Completely Fair Scheduler) period
> (As of version 1.xx)


Changed: `cpuquota` in `query`
> CPUQuota limits the CPU CFS (Completely Fair Scheduler) quota
> (As of version 1.xx)


Changed: `buildargs` in `query`
> JSON map of string pairs denoting build-time variables.
> For example, the build argument `Foo` with the value of `bar` would be encoded in JSON as `["Foo":"bar"]`.
>
> For example, buildargs={"Foo":"bar"}.
>
> Note(s):
> * This should not be used to pass secrets.
> * The value of buildargs should be URI component encoded before being passed to the API.
>
> (As of version 1.xx)


Changed: `shmsize` in `query`
> ShmSize is the "size" value to use when mounting an shmfs on the container's /dev/shm directory.
> Default is 64MB
> (As of version 1.xx)


Changed: `squash` in `query`
> Silently ignored.
> Squash the resulting images layers into a single layer
> (As of version 1.xx)


Changed: `labels` in `query`
> JSON map of key, value pairs to set as labels on the new image
> (As of version 1.xx)


Changed: `networkmode` in `query`
> Sets the networking mode for the run commands during build.
> Supported standard values are:
>   * `bridge` limited to containers within a single host, port mapping required for external access
>   * `host` no isolation between host and containers on this network
>   * `none` disable all networking for this container
>   * container:<nameOrID> share networking with given container
>   ---All other values are assumed to be a custom network's name
> (As of version 1.xx)


Changed: `X-Registry-Config` in `header`

Changed: `platform` in `query`
> Platform format os[/arch[/variant]]
> Can be comma separated list for multi arch builds.
> (As of version 1.xx)


Changed: `target` in `query`
> Target build stage
> (As of version 1.xx)


Changed: `outputs` in `query`
> output configuration TBD
> (As of version 1.xx)


###### Request:
> A tar archive compressed with one of the following algorithms:
> identity (no compression), gzip, bzip2, xz.


New content type : `application/json`

New content type : `application/x-tar`

Deleted content type : `application/octet-stream`

###### Return Type:

Changed response : **200 OK**
> OK (As of version 1.xx)


* New content type : `application/json`

Changed response : **400 Bad Request**
> Bad parameter in request


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /images/create


###### Parameters:

Deleted: `changes` in `query`
> Apply `Dockerfile` instructions to the image that is created,
> for example: `changes=ENV DEBUG=true`.
> Note that `ENV DEBUG=true` should be URI component encoded.
>
> Supported `Dockerfile` instructions:
> `CMD`|`ENTRYPOINT`|`ENV`|`EXPOSE`|`ONBUILD`|`USER`|`VOLUME`|`WORKDIR`


Changed: `fromSrc` in `query`
> Source to import. The value may be a URL from which the image can be retrieved or - to read the image from the request body. This parameter may only be used when importing an image


Changed: `X-Registry-Auth` in `header`
> A base64-encoded auth configuration.


Changed: `platform` in `query`
> Platform in the format os[/arch[/variant]]


###### Request:
> Image content if fromSrc parameter was used


Changed content type : `text/plain`

Changed content type : `application/octet-stream`

###### Return Type:

Changed response : **200 OK**
> no error


* New content type : `application/json`

Changed response : **404 Not Found**
> No such image


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `GET` /images/{name}/history

> History of an image


###### Parameters:

Changed: `name` in `path`
> the name or ID of the container


###### Return Type:

Changed response : **200 OK**
> Image History


* Changed content type : `application/json`

Changed response : **404 Not Found**
> No such image


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /images/{name}/push

> Push Image


###### Parameters:

Added: `all` in `query`
> All indicates whether to push all images related to the image list


Added: `compress` in `query`
> Use compression on image.


Added: `destination` in `query`
> Allows for pushing the image to a different destination than the image refers to.


Added: `format` in `query`
> Manifest type (oci, v2s1, or v2s2) to use when pushing an image. Default is manifest type of source, with fallbacks.


Added: `tlsVerify` in `query`
> Require TLS verification.


Deleted: `platform` in `query`
> Select a platform-specific manifest to be pushed. OCI platform (JSON encoded)


Changed: `name` in `path`
> Name of image to push.


Changed: `X-Registry-Auth` in `header`
> A base64-encoded auth configuration.


###### Return Type:

Changed response : **200 OK**
> no error


* New content type : `application/json`

Changed response : **404 Not Found**
> No such image


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /images/{name}/tag


###### Parameters:

Changed: `name` in `path`
> the name or ID of the container


Changed: `repo` in `query`
> the repository to tag in


Changed: `tag` in `query`
> the name of the new tag


###### Return Type:

Changed response : **201 Created**
> no error

Changed response : **400 Bad Request**
> Bad parameter in request


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **404 Not Found**
> No such image


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **409 Conflict**
> Conflict error in operation


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `DELETE` /images/{name}

> Remove Image


###### Parameters:

Changed: `name` in `path`
> name or ID of image to delete


Changed: `force` in `query`
> remove the image even if used by containers or has other tags


Changed: `noprune` in `query`
> do not remove dangling parent images


###### Return Type:

Changed response : **200 OK**
> Image Delete


* Changed content type : `application/json`

    Changed items (object):

    * Added property `deleted` (string)

    * Added property `untagged` (array)

        Items (string):

    * Deleted property `Untagged` (string)
        > The image ID of an image that was untagged


    * Deleted property `Deleted` (string)
        > The image ID of an image that was deleted


Changed response : **404 Not Found**
> No such image


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **409 Conflict**
> Conflict error in operation


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `GET` /images/search


###### Parameters:

Added: `tlsVerify` in `query`
> Require HTTPS and verify signatures when contacting registries.


Added: `listTags` in `query`
> list the available tags in the repository


Changed: `term` in `query`
> term to search


Changed: `limit` in `query`
> maximum number of results


Changed: `filters` in `query`
> A JSON encoded value of the filters (a `map[string][]string`) to process on the images list. Available filters:
> - `is-automated=(true|false)`
> - `is-official=(true|false)`
> - `stars=<number>` Matches images that have at least 'number' stars.


###### Return Type:

New response : **400 Bad Request**
> Bad parameter in request

Changed response : **200 OK**
> Registry Search


* Changed content type : `application/json`

Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /images/prune

> Prune unused images


###### Parameters:

Changed: `filters` in `query`
> filters to apply to image pruning, encoded as JSON (map[string][]string). Available filters:
>   - `dangling=<boolean>` When set to `true` (or `1`), prune only
>      unused *and* untagged images. When set to `false`
>      (or `0`), all unused images are pruned.
>   - `until=<string>` Prune images created before this timestamp. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon machine’s time.
>   - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune images with (or without, in case `label!=...` is used) the specified labels.


###### Return Type:

Changed response : **200 OK**
> Image Delete


* Changed content type : `application/json`

Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /auth


###### Request:

New content type : `application/x-tar`

Changed content type : `application/json`

* Added property `auth` (string)

* Added property `identitytoken` (string)
    > IdentityToken is used to authenticate the user and get
    > an access token for the registry.


* Added property `registrytoken` (string)
    > RegistryToken is a bearer token to be sent to a registry


* Changed property `email` (string)
    > Email is an optional value associated with the username.
    > This field is deprecated and will be removed in a later
    > version of docker.


###### Return Type:

Deleted response : **204 No Content**
> No error

Deleted response : **401 Unauthorized**
> Auth error

Changed response : **200 OK**
> Auth response


* Changed content type : `application/json`

    New optional properties:
    - `Status`

    * Changed property `Status` (string)

    * Changed property `IdentityToken` (string)

Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `GET` /info

> Get info


###### Return Type:

Changed response : **200 OK**
> to be determined


* Deleted content type : `application/json`

Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `GET` /version

> Component Version information


###### Return Type:

Deleted response : **500 Internal Server Error**
> server error

Changed response : **200 OK**
> Version


* Changed content type : `application/json`

    * Changed property `Platform` (object)

        New optional properties:
        - `Name`

    * Changed property `Components` (array)

        Changed items (object):

        New optional properties:
        - `Name`
        - `Version`

        * Changed property `Name` (string)

        * Changed property `Version` (string)

        * Changed property `Details` (object)

    * Changed property `Version` (string)

    * Changed property `ApiVersion` (string)

    * Changed property `MinAPIVersion` (string)

    * Changed property `GitCommit` (string)

    * Changed property `GoVersion` (string)

    * Changed property `Os` (string)

    * Changed property `Arch` (string)

    * Changed property `KernelVersion` (string)

    * Changed property `Experimental` (boolean)

    * Changed property `BuildTime` (string)

##### `POST` /commit

> New Image


###### Parameters:

Added: `squash` in `query`
> squash newly built layers into a single new layer


Changed: `container` in `query`
> the name or ID of a container


Changed: `repo` in `query`
> the repository name for the created image


Changed: `tag` in `query`
> tag name for the created image


Changed: `comment` in `query`
> commit message


Changed: `author` in `query`
> author of the image


Changed: `pause` in `query`
> pause the container before committing it


Changed: `changes` in `query`
> instructions to apply while committing in Dockerfile format


###### Request:

Deleted content type : `application/json`

###### Return Type:

Changed response : **201 Created**
> no error


* Deleted content type : `application/json`

Changed response : **404 Not Found**
> No such image


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `GET` /events

> Get events


###### Parameters:

Changed: `since` in `query`
> start streaming events from this time


Changed: `until` in `query`
> stop streaming events later than this


Changed: `filters` in `query`
> JSON encoded map[string][]string of constraints


###### Return Type:

Deleted response : **400 Bad Request**
> bad parameter

Changed response : **200 OK**
> returns a string of json data describing an event


* Deleted content type : `application/json`

Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `GET` /system/df

> Show disk usage


###### Parameters:

Deleted: `type` in `query`
> Object types, for which to compute and return data.


###### Return Type:

Changed response : **200 OK**
> Disk usage


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    * Added property `ImagesSize` (integer)

    * Deleted property `LayersSize` (integer)

    * Deleted property `BuildCache` (array)

    * Changed property `Images` (array)

        Changed items (object):
            > SystemDfImageReport describes an image for use with df


        New optional properties:
        - `Containers`
        - `Created`
        - `Id`
        - `Labels`
        - `ParentId`
        - `RepoDigests`
        - `RepoTags`
        - `SharedSize`
        - `Size`

        * Added property `ImageID` (string)

        * Added property `Repository` (string)

        * Added property `Tag` (string)

        * Added property `UniqueSize` (integer)

        * Deleted property `Id` (string)
            > ID is the content-addressable ID of an image.
            >
            > This identifier is a content-addressable digest calculated from the
            > image's configuration (which includes the digests of layers used by
            > the image).
            >
            > Note that this digest differs from the `RepoDigests` below, which
            > holds digests of image manifests that reference the image.


        * Deleted property `ParentId` (string)
            > ID of the parent image.
            >
            > Depending on how the image was created, this field may be empty and
            > is only set for images that were built/created locally. This field
            > is empty if the image was pulled from an image registry.


        * Deleted property `RepoTags` (array)
            > List of image names/tags in the local image cache that reference this
            > image.
            >
            > Multiple image tags can refer to the same image, and this list may be
            > empty if no tags reference the image, in which case the image is
            > "untagged", in which case it can still be referenced by its ID.


        * Deleted property `RepoDigests` (array)
            > List of content-addressable digests of locally available image manifests
            > that the image is referenced from. Multiple manifests can refer to the
            > same image.
            >
            > These digests are usually only available if the image was either pulled
            > from a registry, or if the image was pushed to a registry, which is when
            > the manifest is generated and its digest calculated.


        * Deleted property `VirtualSize` (integer)
            > Total size of the image including all layers it is composed of.
            >
            > Deprecated: this field is omitted in API v1.44, but kept for backward compatibility. Use Size instead.


        * Deleted property `Labels` (object)
            > User-defined key/value metadata.


        * Changed property `Created` (integer -> string)

        * Changed property `Size` (integer)

        * Changed property `SharedSize` (integer)

        * Changed property `Containers` (integer -> integer)

    * Changed property `Containers` (array)

        Changed items (object):
            > SystemDfContainerReport describes a container for use with df


        * Added property `ContainerID` (string)

        * Added property `LocalVolumes` (integer)

        * Added property `RWSize` (integer)

        * Added property `Size` (integer)

        * Deleted property `Id` (string)
            > The ID of this container


        * Deleted property `ImageID` (string)
            > The ID of the image that this container was created from


        * Deleted property `Ports` (array)
            > The ports exposed by this container


        * Deleted property `SizeRw` (integer)
            > The size of files that have been created or changed by this container


        * Deleted property `SizeRootFs` (integer)
            > The total size of all the files in this container


        * Deleted property `Labels` (object)
            > User-defined key/value metadata.


        * Deleted property `State` (string)
            > The state of this container (e.g. `Exited`)


        * Deleted property `HostConfig` (object)

        * Deleted property `NetworkSettings` (object)
            > A summary of the container's network settings


        * Deleted property `Mounts` (array)

        * Changed property `Names` (array -> string)

        * Changed property `Image` (string)

        * Changed property `Command` (string -> array)

        * Changed property `Created` (integer -> string)

        * Changed property `Status` (string)

    * Changed property `Volumes` (array)

        Changed items (object):
            > SystemDfVolumeReport describes a volume and its size


        New optional properties:
        - `Driver`
        - `Labels`
        - `Mountpoint`
        - `Name`
        - `Options`
        - `Scope`

        * Added property `Links` (integer)

        * Added property `ReclaimableSize` (integer)

        * Added property `Size` (integer)

        * Added property `VolumeName` (string)

        * Deleted property `Name` (string)
            > Name of the volume.


        * Deleted property `Driver` (string)
            > Name of the volume driver used by the volume.


        * Deleted property `Mountpoint` (string)
            > Mount path of the volume on the host.


        * Deleted property `CreatedAt` (string)
            > Date/Time the volume was created.


        * Deleted property `Status` (object)
            > Low-level details about the volume, provided by the volume driver.
            > Details are returned as a map with key/value pairs:
            > `{"key":"value","key2":"value2"}`.
            >
            > The `Status` field is optional, and is omitted if the volume driver
            > does not support this feature.


        * Deleted property `Labels` (object)
            > User-defined key/value metadata.


        * Deleted property `Scope` (string)
            > The level at which the volume exists. Either `global` for cluster-wide,
            > or `local` for machine level.


        * Deleted property `ClusterVolume` (object)
            > ClusterVolume contains options and information specific to, and only present
            > on, Swarm CSI cluster volumes.


        * Deleted property `Options` (object)
            > The driver specific options used when creating the volume.


        * Deleted property `UsageData` (object)
            > Usage details about the volume. This information is used by the
            > `GET /system/df` endpoint, and omitted in other endpoints.


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `GET` /images/{name}/get


###### Parameters:

Changed: `name` in `path`
> the name or ID of the container


###### Return Type:

Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/x-tar`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /images/load

> Import image


###### Parameters:

Changed: `quiet` in `query`
> not supported


###### Request:
> tarball of container image


New content type : `application/json`

Changed content type : `application/x-tar`

###### Return Type:

Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /containers/{id}/exec


###### Parameters:

Added: `name` in `path`
> name of container


Deleted: `id` in `path`
> ID or name of container


###### Request:
> Attributes for create


New content type : `application/x-tar`

Changed content type : `application/json`

* Deleted property `ConsoleSize` (array)
    > Initial console size, as an `[height, width]` array.


* Changed property `AttachStdin` (boolean)
    > Attach to stdin of the exec command


* Changed property `AttachStdout` (boolean)
    > Attach to stdout of the exec command


* Changed property `AttachStderr` (boolean)
    > Attach to stderr of the exec command


* Changed property `DetachKeys` (string)
    > "Override the key sequence for detaching a container. Format is a single character [a-Z] or ctrl-<value> where <value> is one of: a-z, @, ^, [, , or _."


* Changed property `Tty` (boolean)
    > Allocate a pseudo-TTY


* Changed property `Env` (array)
    > A list of environment variables in the form ["VAR=value", ...]


* Changed property `Privileged` (boolean)
    > Runs the exec process with extended privileges


* Changed property `User` (string)
    > "The user, and optionally, group to run the exec process inside the container. Format is one of: user, user:group, uid, or uid:gid."


* Changed property `WorkingDir` (string)
    > The working directory for the exec process inside the container.


###### Return Type:

Changed response : **201 Created**
> no error


* Deleted content type : `application/json`

Changed response : **409 Conflict**
> container is paused


* Deleted content type : `application/json`

Changed response : **404 Not Found**
> No such container


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /exec/{id}/resize


###### Parameters:

Added: `running` in `query`
> Ignore containers not running errors


###### Return Type:

New response : **201 Created**
> no error

Deleted response : **200 OK**
> No error

Deleted response : **400 Bad Request**
> bad parameter

Changed response : **404 Not Found**
> No such exec instance


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `GET` /exec/{id}/json


###### Return Type:

Changed response : **200 OK**
> Exec Session Inspect


* Changed content type : `application/json`

    * Changed property `CanRemove` (boolean)
        > CanRemove is legacy and used purely for compatibility reasons.
        > Will always be set to true, unless the exec session is running.


    * Changed property `DetachKeys` (string)
        > DetachKeys are the detach keys used by the exec session.
        > If set to "" the default keys are being used.
        > Will show "<none>" if no detach keys are set.


    * Changed property `ID` (string)
        > ID is the ID of the exec session.


    * Changed property `Running` (boolean)
        > Running is whether the exec session is running.


    * Changed property `ExitCode` (integer -> integer)
        > ExitCode is the exit code of the exec session. Will be set to 0 if
        > the exec session has not yet exited.


    * Changed property `OpenStdin` (boolean)
        > OpenStdin is whether the container's STDIN stream will be attached
        > to.


    * Changed property `OpenStderr` (boolean)
        > OpenStderr is whether the container's STDERR stream will be attached.
        > Always set to true if the exec session created a TTY.


    * Changed property `OpenStdout` (boolean)
        > OpenStdout is whether the container's STDOUT stream will be attached.
        > Always set to true if the exec session created a TTY.


    * Changed property `ContainerID` (string)
        > ContainerID is the ID of the container this exec session is attached
        > to.


    * Changed property `Pid` (integer -> integer)
        > Pid is the PID of the exec session's process.
        > Will be set to 0 if the exec session is not running.


    * Changed property `ProcessConfig` (object)
        > InspectExecProcess contains information about the process in a given exec
        > session.


        * Changed property `privileged` (boolean)
            > Privileged is whether the exec session will be started with elevated
            > privileges.


        * Changed property `user` (string)
            > User is the user the exec session was started as.


        * Changed property `tty` (boolean)
            > Tty is whether the exec session created a terminal.


        * Changed property `entrypoint` (string)
            > Entrypoint is the entrypoint for the exec session (the command that
            > will be executed in the container).


        * Changed property `arguments` (array)
            > Arguments are the arguments to the entrypoint command of the exec
            > session.


Changed response : **404 Not Found**
> No such exec instance


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /volumes/prune

> Prune volumes


###### Parameters:

Changed: `filters` in `query`
> JSON encoded value of filters (a map[string][]string) to match volumes against before pruning.
> Available filters:
>   - `until=<timestamp>` Prune volumes created before this timestamp. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon machine’s time.
>   - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune volumes with (or without, in case `label!=...` is used) the specified labels.


###### Return Type:

Changed response : **200 OK**
> Volume prune


* Changed content type : `application/json`

    * Added property `Err` (string)

    * Added property `Id` (string)

    * Added property `Size` (integer)

    * Deleted property `VolumesDeleted` (array)
        > Volumes that were deleted


    * Deleted property `SpaceReclaimed` (integer)
        > Disk space reclaimed in bytes


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /networks/create

> Create network


###### Request:
> attributes for creating a network


New content type : `application/x-tar`

Changed content type : `application/json`

###### Return Type:

Deleted response : **403 Forbidden**
> Forbidden operation. This happens when trying to create a network named after a pre-defined network,
> or when trying to create an overlay network on a daemon which is not part of a Swarm cluster.

Deleted response : **404 Not Found**
> plugin not found

Changed response : **201 Created**
> network created


* Changed content type : `application/json`

    New optional properties:
    - `Id`
    - `Warning`

    * Changed property `Id` (string)

    * Changed property `Warning` (string)

Changed response : **400 Bad Request**
> Bad parameter in request


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /networks/{id}/connect

> Connect container to network


###### Parameters:

Added: `name` in `path`
> the name of the network


Deleted: `id` in `path`
> Network ID or name


###### Request:
> attributes for connecting a container to a network


New content type : `application/x-tar`

Changed content type : `application/json`

###### Return Type:

Deleted response : **404 Not Found**
> Network or container not found

Changed response : **200 OK**
> OK

Changed response : **400 Bad Request**
> Bad parameter in request


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **403 Forbidden**
> Network is already connected and container is running or transitioning to the running state ('initialized')


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /networks/{id}/disconnect

> Disconnect container from network


###### Parameters:

Added: `name` in `path`
> the name of the network


Deleted: `id` in `path`
> Network ID or name


###### Request:
> attributes for disconnecting a container from a network


New content type : `application/x-tar`

Changed content type : `application/json`

###### Return Type:

New response : **400 Bad Request**
> Bad parameter in request

Deleted response : **403 Forbidden**
> Operation not supported for swarm scoped networks

Deleted response : **404 Not Found**
> Network or container not found

Changed response : **200 OK**
> OK

Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /networks/prune


###### Parameters:

Changed: `filters` in `query`
> Filters to process on the prune list, encoded as JSON (a map[string][]string).
> Available filters:
>   - `until=<timestamp>` Prune networks created before this timestamp. The <timestamp> can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon machine’s time.
>   - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune networks with (or without, in case `label!=...` is used) the specified labels.


###### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `NetworksDeleted` (array)

Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `POST` /secrets/create


###### Request:
> attributes for creating a secret


New content type : `application/x-tar`

Changed content type : `application/json`

* Deleted property `Templating` (object)

* Changed property `Labels` (object)
    > Labels are labels on the secret


* Changed property `Data` (string)
    > Base64-url-safe-encoded (RFC 4648) data to store as secret.


* Changed property `Driver` (object)

    New optional properties:
    - `Name`

    * Changed property `Name` (string)

    * Changed property `Options` (object)

###### Return Type:

Deleted response : **503 Service Unavailable**
> node is not part of a swarm

Changed response : **201 Created**
> Secret create response


* Changed content type : `application/json`

    New optional properties:
    - `Id`

    * Added property `ID` (string)

    * Deleted property `Id` (string)
        > The id of the newly created object.


Changed response : **409 Conflict**
> Secret in use


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `GET` /containers/json


###### Parameters:

Added: `external` in `query`
> Return containers in storage not controlled by Podman


Changed: `all` in `query`
> Return all containers. By default, only running containers are shown


Changed: `limit` in `query`
> Return this number of most recently created containers, including non-running ones.


Changed: `size` in `query`
> Return the size of container as fields SizeRw and SizeRootFs.


Changed: `filters` in `query`
> A JSON encoded value of the filters (a `map[string][]string`) to process on the containers list. Available filters:
> - `ancestor`=(`<image-name>[:<tag>]`, `<image id>`, or `<image@digest>`)
> - `before`=(`<container id>` or `<container name>`)
> - `expose`=(`<port>[/<proto>]` or `<startport-endport>/[<proto>]`)
> - `exited=<int>` containers with exit code of `<int>`
> - `health`=(`starting`, `healthy`, `unhealthy` or `none`)
> - `id=<ID>` a container's ID
> - `is-task`=(`true` or `false`)
> - `label`=(`key` or `"key=value"`) of a container label
> - `name=<name>` a container's name
> - `network`=(`<network id>` or `<network name>`)
> - `publish`=(`<port>[/<proto>]` or `<startport-endport>/[<proto>]`)
> - `since`=(`<container id>` or `<container name>`)
> - `status`=(`created`, `restarting`, `running`, `removing`, `paused`, `exited` or `dead`)
> - `volume`=(`<volume name>` or `<mount point destination>`)


###### Return Type:

Changed response : **400 Bad Request**
> Bad parameter in request


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **200 OK**
> List Containers


* Changed content type : `application/json`

    Changed items (object):

    * Added property `Config` (object)
        > It should hold only portable information about the container.
        > Here, "portable" means "independent from the host we are running on".
        > Non-portable information *should* appear in HostConfig.
        > All fields added to this struct must be marked `omitempty` to keep getting
        > predictable hashes from the old `v1Compatibility` configuration.


        * Property `ArgsEscaped` (boolean)

        * Property `AttachStderr` (boolean)

        * Property `AttachStdin` (boolean)

        * Property `AttachStdout` (boolean)

        * Property `Cmd` (array)
            > We need to override the json decoder to accept both options.


            Items (string):

        * Property `Domainname` (string)

        * Property `Entrypoint` (array)
            > We need to override the json decoder to accept both options.


        * Property `Env` (array)

            Items (string):

        * Property `ExposedPorts` (object)
            > PortSet is a collection of structs indexed by Port


        * Property `Healthcheck` (object)

            * Property `Interval` (integer)
                > A Duration represents the elapsed time between two instants
                > as an int64 nanosecond count. The representation limits the
                > largest representable duration to approximately 290 years.


            * Property `Retries` (integer)
                > Retries is the number of consecutive failures needed to consider a container as unhealthy.
                > Zero means inherit.


            * Property `StartInterval` (integer)
                > A Duration represents the elapsed time between two instants
                > as an int64 nanosecond count. The representation limits the
                > largest representable duration to approximately 290 years.


            * Property `StartPeriod` (integer)
                > A Duration represents the elapsed time between two instants
                > as an int64 nanosecond count. The representation limits the
                > largest representable duration to approximately 290 years.


            * Property `Test` (array)
                > Test is the test to perform to check that the container is healthy.
                > An empty slice means to inherit the default.
                > The options are:
                > {} : inherit healthcheck
                > {"NONE"} : disable healthcheck
                > {"CMD", args...} : exec arguments directly
                > {"CMD-SHELL", command} : run command with system's default shell


                Items (string):

            * Property `Timeout` (integer)
                > A Duration represents the elapsed time between two instants
                > as an int64 nanosecond count. The representation limits the
                > largest representable duration to approximately 290 years.


        * Property `Hostname` (string)

        * Property `Image` (string)

        * Property `Labels` (object)

        * Property `MacAddress` (string)
            > Mac Address of the container.
            >
            > Deprecated: this field is deprecated since API v1.44. Use EndpointSettings.MacAddress instead.


        * Property `NetworkDisabled` (boolean)

        * Property `OnBuild` (array)

        * Property `OpenStdin` (boolean)

        * Property `Shell` (array)
            > We need to override the json decoder to accept both options.


        * Property `StdinOnce` (boolean)

        * Property `StopSignal` (string)

        * Property `StopTimeout` (integer)

        * Property `Tty` (boolean)

        * Property `User` (string)

        * Property `Volumes` (object)

        * Property `WorkingDir` (string)

    * Added property `DefaultReadOnlyNonRecursive` (boolean)

    * Added property `Name` (string)

    * Added property `NetworkingConfig` (object)
        > NetworkingConfig represents the container's networking configuration for each of its interfaces
        > Carries the networking configs specified in the `docker run` and `docker network connect` commands


        * Property `EndpointsConfig` (object)

    * Added property `Platform` (object)

        * Property `architecture` (string)
            > Architecture field specifies the CPU architecture, for example
            > `amd64` or `ppc64le`.


        * Property `os` (string)
            > OS specifies the operating system, for example `linux` or `windows`.


        * Property `os.features` (array)
            > OSFeatures is an optional field specifying an array of strings,
            > each listing a required OS feature (for example on Windows `win32k`).


            Items (string):

        * Property `os.version` (string)
            > OSVersion is an optional field specifying the operating system
            > version, for example on Windows `10.0.14393.1066`.


        * Property `variant` (string)
            > Variant is an optional field specifying a variant of the CPU, for
            > example `v7` to specify ARMv7 when architecture is `arm`.


    * Changed property `Id` (string)

    * Changed property `Names` (array)

    * Changed property `Image` (string)

    * Changed property `ImageID` (string)

    * Changed property `Command` (string)

    * Changed property `Created` (integer)

    * Changed property `SizeRw` (integer)

    * Changed property `SizeRootFs` (integer)

    * Changed property `Labels` (object)

    * Changed property `State` (string)

    * Changed property `Status` (string)

    * Changed property `HostConfig` (object)
        > Here, "non-portable" means "dependent of the host we are running on".
        > Portable information *should* appear in Config.


        * Added property `AutoRemove` (boolean)

        * Added property `Binds` (array)
            > Applicable to all platforms


            Items (string):

        * Added property `BlkioDeviceReadBps` (array)

            Items (object):
                > ThrottleDevice is a structure that holds device:rate_per_second pair


            * Property `Path` (string)

            * Property `Rate` (integer)

        * Added property `BlkioDeviceReadIOps` (array)

        * Added property `BlkioDeviceWriteBps` (array)

        * Added property `BlkioDeviceWriteIOps` (array)

        * Added property `BlkioWeight` (integer)

        * Added property `BlkioWeightDevice` (array)

            Items (object):
                > WeightDevice is a structure that holds device:weight pair


            * Property `Path` (string)

            * Property `Weight` (integer)

        * Added property `CapAdd` (array)
            > We need to override the json decoder to accept both options.


        * Added property `CapDrop` (array)
            > We need to override the json decoder to accept both options.


        * Added property `Cgroup` (string)

        * Added property `CgroupParent` (string)
            > Applicable to UNIX platforms


        * Added property `CgroupnsMode` (string)
            > CgroupnsMode represents the cgroup namespace mode of the container


        * Added property `ConsoleSize` (array)

            Items (integer):

        * Added property `ContainerIDFile` (string)

        * Added property `CpuCount` (integer)
            > Applicable to Windows


        * Added property `CpuPercent` (integer)

        * Added property `CpuPeriod` (integer)

        * Added property `CpuQuota` (integer)

        * Added property `CpuRealtimePeriod` (integer)

        * Added property `CpuRealtimeRuntime` (integer)

        * Added property `CpuShares` (integer)
            > Applicable to all platforms


        * Added property `CpusetCpus` (string)

        * Added property `CpusetMems` (string)

        * Added property `DeviceCgroupRules` (array)

        * Added property `DeviceRequests` (array)

            Items (object):
                > Used by GPU device drivers.


            * Property `Capabilities` (array)

                Items (array):

            * Property `Count` (integer)

            * Property `DeviceIDs` (array)

            * Property `Driver` (string)

            * Property `Options` (object)

        * Added property `Devices` (array)

            Items (object):

            * Property `CgroupPermissions` (string)

            * Property `PathInContainer` (string)

            * Property `PathOnHost` (string)

        * Added property `Dns` (array)

            Items (string):

        * Added property `DnsOptions` (array)

            Items (string):

        * Added property `DnsSearch` (array)

            Items (string):

        * Added property `ExtraHosts` (array)

        * Added property `GroupAdd` (array)

        * Added property `IOMaximumBandwidth` (integer)

        * Added property `IOMaximumIOps` (integer)

        * Added property `Init` (boolean)
            > Run a custom init inside the container, if null, use the daemon's configured settings


        * Added property `IpcMode` (string)

        * Added property `Isolation` (string)
            > Isolation represents the isolation technology of a container. The supported
            > values are platform specific


        * Added property `KernelMemory` (integer)
            > KernelMemory specifies the kernel memory limit (in bytes) for the container.
            > Deprecated: kernel 5.4 deprecated kmem.limit_in_bytes.


        * Added property `KernelMemoryTCP` (integer)

        * Added property `Links` (array)

        * Added property `LogConfig` (object)

            * Property `Config` (object)

            * Property `Type` (string)

        * Added property `MaskedPaths` (array)
            > MaskedPaths is the list of paths to be masked inside the container (this overrides the default set of paths)


            Items (string):

        * Added property `Memory` (integer)

        * Added property `MemoryReservation` (integer)

        * Added property `MemorySwap` (integer)

        * Added property `MemorySwappiness` (integer)

        * Added property `Mounts` (array)
            > Mounts specs used by the container


            Items (object):

            * Property `BindOptions` (object)

                * Property `CreateMountpoint` (boolean)

                * Property `NonRecursive` (boolean)

                * Property `Propagation` (string)

                * Property `ReadOnlyForceRecursive` (boolean)
                    > ReadOnlyForceRecursive raises an error if the mount cannot be made recursively read-only.


                * Property `ReadOnlyNonRecursive` (boolean)
                    > ReadOnlyNonRecursive makes the mount non-recursively read-only, but still leaves the mount recursive
                    > (unless NonRecursive is set to true in conjunction).


            * Property `ClusterOptions` (object)

            * Property `Consistency` (string)

            * Property `ReadOnly` (boolean)

            * Property `Source` (string)
                > Source specifies the name of the mount. Depending on mount type, this
                > may be a volume name or a host path, or even ignored.
                > Source is not supported for tmpfs (must be an empty value)


            * Property `Target` (string)

            * Property `TmpfsOptions` (object)

                * Property `Mode` (integer)
                    > The bits have the same definition on all systems, so that
                    > information about files can be moved from one system
                    > to another portably. Not all bits apply to all systems.
                    > The only required bit is [ModeDir] for directories.


                * Property `Options` (array)
                    > Options to be passed to the tmpfs mount. An array of arrays. Flag
                    > options should be provided as 1-length arrays. Other types should be
                    > provided as 2-length arrays, where the first item is the key and the
                    > second the value.


                    Items (array):

                * Property `SizeBytes` (integer)
                    > Size sets the size of the tmpfs, in bytes.
                    >
                    > This will be converted to an operating system specific value
                    > depending on the host. For example, on linux, it will be converted to
                    > use a 'k', 'm' or 'g' syntax. BSD, though not widely supported with
                    > docker, uses a straight byte value.
                    >
                    > Percentages are not supported.


            * Property `Type` (string)

            * Property `VolumeOptions` (object)

                * Property `DriverConfig` (object)

                    * Property `Name` (string)

                    * Property `Options` (object)

                * Property `Labels` (object)

                * Property `NoCopy` (boolean)

                * Property `Subpath` (string)

        * Added property `NanoCpus` (integer)

        * Added property `OomKillDisable` (boolean)

        * Added property `OomScoreAdj` (integer)

        * Added property `PidMode` (string)

        * Added property `PidsLimit` (integer)

        * Added property `PortBindings` (object)
            > PortMap is a collection of PortBinding indexed by Port


        * Added property `Privileged` (boolean)

        * Added property `PublishAllPorts` (boolean)

        * Added property `ReadonlyPaths` (array)
            > ReadonlyPaths is the list of paths to be set as read-only inside the container (this overrides the default set of paths)


            Items (string):

        * Added property `ReadonlyRootfs` (boolean)

        * Added property `RestartPolicy` (object)

            * Property `MaximumRetryCount` (integer)

            * Property `Name` (string)

        * Added property `Runtime` (string)

        * Added property `SecurityOpt` (array)

        * Added property `ShmSize` (integer)

        * Added property `StorageOpt` (object)

        * Added property `Sysctls` (object)

        * Added property `Tmpfs` (object)

        * Added property `UTSMode` (string)

        * Added property `Ulimits` (array)

            Items (object):

            * Property `Hard` (integer)

            * Property `Name` (string)

            * Property `Soft` (integer)

        * Added property `UsernsMode` (string)

        * Added property `VolumeDriver` (string)

        * Added property `VolumesFrom` (array)

        * Changed property `Annotations` (object)

    * Changed property `Ports` (array)

        Changed items (object):
            > Port An open port on a container


        * Changed property `IP` (string -> string)
            > Host IP address that the container's port is mapped to


        * Changed property `Type` (string)
            > type


            Removed enum values:

            * `tcp`
            * `udp`
            * `sctp`
    * Changed property `Mounts` (array)

        Changed items (object):
            > This is used for reporting the mountpoints in use by a container.


        * Changed property `Type` (string)

            Removed enum values:

            * `bind`
            * `volume`
            * `tmpfs`
            * `npipe`
            * `cluster`
        * Changed property `Name` (string)
            > Name is the name reference to the underlying data defined by `Source`
            > e.g., the volume name.


        * Changed property `Source` (string)
            > Source is the source location of the mount.
            >
            > For volumes, this contains the storage location of the volume (within
            > `/var/lib/docker/volumes/`). For bind-mounts, and `npipe`, this contains
            > the source (host) part of the bind-mount. For `tmpfs` mount points, this
            > field is empty.


        * Changed property `Destination` (string)
            > Destination is the path relative to the container root (`/`) where the
            > Source is mounted inside the container.


        * Changed property `Driver` (string)
            > Driver is the volume driver used to create the volume (if it is a volume).


        * Changed property `Mode` (string)
            > Mode is a comma separated list of options supplied by the user when
            > creating the bind/volume mount.
            >
            > The default is platform-specific (`"z"` on Linux, empty on Windows).


        * Changed property `RW` (boolean)
            > RW indicates whether the mount is mounted writable (read-write).


        * Changed property `Propagation` (string)

    * Changed property `NetworkSettings` (object)
        > SummaryNetworkSettings provides a summary of container's networks
        > in /containers/json


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


Changed: `name` in `query`
> container name


###### Request:

New content type : `application/x-tar`

Deleted content type : `application/octet-stream`

Changed content type : `application/json`

* Added property `EnvMerge` (array)

* Added property `Name` (string)

* Added property `UnsetEnv` (array)

* Added property `UnsetEnvAll` (boolean)

* Changed property `Hostname` (string)

* Changed property `Domainname` (string)

* Changed property `User` (string)

* Changed property `AttachStdin` (boolean)

* Changed property `AttachStdout` (boolean)

* Changed property `AttachStderr` (boolean)

* Changed property `ExposedPorts` (object)
    > PortSet is a collection of structs indexed by Port


* Changed property `Tty` (boolean)

* Changed property `OpenStdin` (boolean)

* Changed property `StdinOnce` (boolean)

* Changed property `Env` (array)

* Changed property `Cmd` (array)
    > We need to override the json decoder to accept both options.


* Changed property `ArgsEscaped` (boolean)

* Changed property `Image` (string)

* Changed property `Volumes` (object)

* Changed property `WorkingDir` (string)

* Changed property `Entrypoint` (array)
    > We need to override the json decoder to accept both options.


* Changed property `NetworkDisabled` (boolean)

* Changed property `MacAddress` (string)
    > Mac Address of the container.
    >
    > Deprecated: this field is deprecated since API v1.44. Use EndpointSettings.MacAddress instead.


* Changed property `OnBuild` (array)

* Changed property `Labels` (object)

* Changed property `StopSignal` (string)

* Changed property `StopTimeout` (integer -> integer)

* Changed property `Shell` (array)
    > We need to override the json decoder to accept both options.


* Changed property `Healthcheck` (object)

    * Changed property `Test` (array)
        > Test is the test to perform to check that the container is healthy.
        > An empty slice means to inherit the default.
        > The options are:
        > {} : inherit healthcheck
        > {"NONE"} : disable healthcheck
        > {"CMD", args...} : exec arguments directly
        > {"CMD-SHELL", command} : run command with system's default shell


    * Changed property `Interval` (integer)
        > A Duration represents the elapsed time between two instants
        > as an int64 nanosecond count. The representation limits the
        > largest representable duration to approximately 290 years.


    * Changed property `Timeout` (integer)
        > A Duration represents the elapsed time between two instants
        > as an int64 nanosecond count. The representation limits the
        > largest representable duration to approximately 290 years.


    * Changed property `Retries` (integer -> integer)
        > Retries is the number of consecutive failures needed to consider a container as unhealthy.
        > Zero means inherit.


    * Changed property `StartPeriod` (integer)
        > A Duration represents the elapsed time between two instants
        > as an int64 nanosecond count. The representation limits the
        > largest representable duration to approximately 290 years.


    * Changed property `StartInterval` (integer)
        > A Duration represents the elapsed time between two instants
        > as an int64 nanosecond count. The representation limits the
        > largest representable duration to approximately 290 years.


* Changed property `HostConfig` (object)
    > Here, "non-portable" means "dependent of the host we are running on".
    > Portable information *should* appear in Config.


    * Added property `KernelMemory` (integer)
        > KernelMemory specifies the kernel memory limit (in bytes) for the container.
        > Deprecated: kernel 5.4 deprecated kmem.limit_in_bytes.


    * Changed property `CpuShares` (integer -> integer)
        > Applicable to all platforms


    * Changed property `Memory` (integer)

    * Changed property `CgroupParent` (string)
        > Applicable to UNIX platforms


    * Changed property `BlkioWeight` (integer -> integer)

    * Changed property `BlkioWeightDevice` (array)

        Changed items (object):
            > WeightDevice is a structure that holds device:weight pair


        * Changed property `Weight` (integer -> integer)

    * Changed property `BlkioDeviceWriteBps` (array)

    * Changed property `BlkioDeviceReadIOps` (array)

    * Changed property `BlkioDeviceWriteIOps` (array)

    * Changed property `CpuPeriod` (integer)

    * Changed property `CpuQuota` (integer)

    * Changed property `CpuRealtimePeriod` (integer)

    * Changed property `CpuRealtimeRuntime` (integer)

    * Changed property `CpusetCpus` (string)

    * Changed property `CpusetMems` (string)

    * Changed property `DeviceCgroupRules` (array)

    * Changed property `KernelMemoryTCP` (integer)

    * Changed property `MemoryReservation` (integer)

    * Changed property `MemorySwap` (integer)

    * Changed property `MemorySwappiness` (integer)

    * Changed property `NanoCpus` (integer)

    * Changed property `OomKillDisable` (boolean)

    * Changed property `Init` (boolean)
        > Run a custom init inside the container, if null, use the daemon's configured settings


    * Changed property `PidsLimit` (integer)

    * Changed property `Ulimits` (array)

        Changed items (object):

        * Changed property `Name` (string)

        * Changed property `Soft` (integer -> integer)

        * Changed property `Hard` (integer -> integer)

    * Changed property `CpuCount` (integer)
        > Applicable to Windows


    * Changed property `CpuPercent` (integer)

    * Changed property `IOMaximumIOps` (integer -> integer)

    * Changed property `IOMaximumBandwidth` (integer -> integer)

    * Changed property `Binds` (array)
        > Applicable to all platforms


    * Changed property `ContainerIDFile` (string)

    * Changed property `LogConfig` (object)

        * Changed property `Type` (string)

            Removed enum values:

            * `json-file`
            * `syslog`
            * `journald`
            * `gelf`
            * `fluentd`
            * `awslogs`
            * `splunk`
            * `etwlogs`
            * `none`
    * Changed property `NetworkMode` (string)

    * Changed property `AutoRemove` (boolean)

    * Changed property `VolumeDriver` (string)

    * Changed property `VolumesFrom` (array)

    * Changed property `ConsoleSize` (array)

        Changed items (integer -> integer):

    * Changed property `Annotations` (object)

    * Changed property `CapAdd` (array)
        > We need to override the json decoder to accept both options.


    * Changed property `CapDrop` (array)
        > We need to override the json decoder to accept both options.


    * Changed property `CgroupnsMode` (string)
        > CgroupnsMode represents the cgroup namespace mode of the container


        Removed enum values:

        * `private`
        * `host`
    * Changed property `Dns` (array)

    * Changed property `DnsOptions` (array)

    * Changed property `DnsSearch` (array)

    * Changed property `ExtraHosts` (array)

    * Changed property `GroupAdd` (array)

    * Changed property `IpcMode` (string)

    * Changed property `Cgroup` (string)

    * Changed property `Links` (array)

    * Changed property `OomScoreAdj` (integer -> integer)

    * Changed property `PidMode` (string)

    * Changed property `Privileged` (boolean)

    * Changed property `PublishAllPorts` (boolean)

    * Changed property `ReadonlyRootfs` (boolean)

    * Changed property `SecurityOpt` (array)

    * Changed property `StorageOpt` (object)

    * Changed property `Tmpfs` (object)

    * Changed property `UTSMode` (string)

    * Changed property `UsernsMode` (string)

    * Changed property `ShmSize` (integer)

    * Changed property `Sysctls` (object)

    * Changed property `Runtime` (string)

    * Changed property `Isolation` (string)
        > Isolation represents the isolation technology of a container. The supported
        > values are platform specific


        Removed enum values:

        * `default`
        * `process`
        * `hyperv`
    * Changed property `MaskedPaths` (array)
        > MaskedPaths is the list of paths to be masked inside the container (this overrides the default set of paths)


    * Changed property `ReadonlyPaths` (array)
        > ReadonlyPaths is the list of paths to be set as read-only inside the container (this overrides the default set of paths)


    * Changed property `BlkioDeviceReadBps` (array)

        Changed items (object):
            > ThrottleDevice is a structure that holds device:rate_per_second pair


        * Changed property `Path` (string)

        * Changed property `Rate` (integer -> integer)

    * Changed property `Devices` (array)

        Changed items (object):

    * Changed property `DeviceRequests` (array)

        Changed items (object):
            > Used by GPU device drivers.


        * Changed property `Count` (integer -> integer)

        * Changed property `Capabilities` (array)

        * Changed property `Options` (object)

    * Changed property `RestartPolicy` (object)

        * Changed property `Name` (string)

            Removed enum values:

            * ``
            * `no`
            * `always`
            * `unless-stopped`
            * `on-failure`
        * Changed property `MaximumRetryCount` (integer -> integer)

    * Changed property `Mounts` (array)
        > Mounts specs used by the container


        Changed items (object):

        * Added property `ClusterOptions` (object)

        * Changed property `Target` (string)

        * Changed property `Source` (string)
            > Source specifies the name of the mount. Depending on mount type, this
            > may be a volume name or a host path, or even ignored.
            > Source is not supported for tmpfs (must be an empty value)


        * Changed property `Type` (string)

            Removed enum values:

            * `bind`
            * `volume`
            * `tmpfs`
            * `npipe`
            * `cluster`
        * Changed property `ReadOnly` (boolean)

        * Changed property `Consistency` (string)

        * Changed property `BindOptions` (object)

            * Changed property `Propagation` (string)

                Removed enum values:

                * `private`
                * `rprivate`
                * `shared`
                * `rshared`
                * `slave`
                * `rslave`
            * Changed property `NonRecursive` (boolean)

            * Changed property `CreateMountpoint` (boolean)

            * Changed property `ReadOnlyNonRecursive` (boolean)
                > ReadOnlyNonRecursive makes the mount non-recursively read-only, but still leaves the mount recursive
                > (unless NonRecursive is set to true in conjunction).


            * Changed property `ReadOnlyForceRecursive` (boolean)
                > ReadOnlyForceRecursive raises an error if the mount cannot be made recursively read-only.


        * Changed property `VolumeOptions` (object)

            * Changed property `NoCopy` (boolean)

            * Changed property `Labels` (object)

            * Changed property `DriverConfig` (object)

                * Changed property `Name` (string)

                * Changed property `Options` (object)

            * Changed property `Subpath` (string)

        * Changed property `TmpfsOptions` (object)

            * Changed property `SizeBytes` (integer)
                > Size sets the size of the tmpfs, in bytes.
                >
                > This will be converted to an operating system specific value
                > depending on the host. For example, on linux, it will be converted to
                > use a 'k', 'm' or 'g' syntax. BSD, though not widely supported with
                > docker, uses a straight byte value.
                >
                > Percentages are not supported.


            * Changed property `Mode` (integer -> integer)
                > The bits have the same definition on all systems, so that
                > information about files can be moved from one system
                > to another portably. Not all bits apply to all systems.
                > The only required bit is [ModeDir] for directories.


            * Changed property `Options` (array)
                > Options to be passed to the tmpfs mount. An array of arrays. Flag
                > options should be provided as 1-length arrays. Other types should be
                > provided as 2-length arrays, where the first item is the key and the
                > second the value.


    * Changed property `PortBindings` (object)
        > PortMap is a collection of PortBinding indexed by Port


* Changed property `NetworkingConfig` (object)
    > NetworkingConfig represents the container's networking configuration for each of its interfaces
    > Carries the networking configs specified in the `docker run` and `docker network connect` commands


    * Changed property `EndpointsConfig` (object)

###### Return Type:

Changed response : **201 Created**
> Create container


* Changed content type : `application/json`

    * Changed property `Id` (string)
        > ID of the container created


    * Changed property `Warnings` (array)
        > Warnings during container creation


Changed response : **400 Bad Request**
> Bad parameter in request


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **404 Not Found**
> No such container


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **409 Conflict**
> Conflict error in operation


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `GET` /containers/{id}/json

> Inspect container


###### Parameters:

Changed: `size` in `query`
> include the size of the container


###### Return Type:

Changed response : **404 Not Found**
> No such container


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **200 OK**
> Inspect container


* Changed content type : `application/json`

    * Added property `Node` (object)
        > Deprecated: ContainerNode was used for the classic Docker Swarm standalone API. It will be removed in the next release.


        * Property `Addr` (string)

        * Property `Cpus` (integer)

        * Property `ID` (string)

        * Property `IP` (string)

        * Property `Labels` (object)

        * Property `Memory` (integer)

        * Property `Name` (string)

    * Changed property `Id` (string)

    * Changed property `Created` (string)

    * Changed property `Path` (string)

    * Changed property `Args` (array)

    * Changed property `Image` (string)

    * Changed property `RestartCount` (integer -> integer)

    * Changed property `ExecIDs` (array)

    * Changed property `SizeRw` (integer)

    * Changed property `SizeRootFs` (integer)

    * Changed property `GraphDriver` (object)
        > GraphDriverData Information about the storage driver used to store the container's and
        > image's filesystem.


        * Changed property `Data` (object)
            > Low-level storage metadata, provided as key/value pairs.
            >
            > This information is driver-specific, and depends on the storage-driver
            > in use, and should be used for informational purposes only.


    * Changed property `Mounts` (array)

        Changed items (object):
            > This is used for reporting the mountpoints in use by a container.


        * Changed property `Type` (string)

            Removed enum values:

            * `bind`
            * `volume`
            * `tmpfs`
            * `npipe`
            * `cluster`
        * Changed property `Name` (string)
            > Name is the name reference to the underlying data defined by `Source`
            > e.g., the volume name.


        * Changed property `Source` (string)
            > Source is the source location of the mount.
            >
            > For volumes, this contains the storage location of the volume (within
            > `/var/lib/docker/volumes/`). For bind-mounts, and `npipe`, this contains
            > the source (host) part of the bind-mount. For `tmpfs` mount points, this
            > field is empty.


        * Changed property `Destination` (string)
            > Destination is the path relative to the container root (`/`) where the
            > Source is mounted inside the container.


        * Changed property `Driver` (string)
            > Driver is the volume driver used to create the volume (if it is a volume).


        * Changed property `Mode` (string)
            > Mode is a comma separated list of options supplied by the user when
            > creating the bind/volume mount.
            >
            > The default is platform-specific (`"z"` on Linux, empty on Windows).


        * Changed property `RW` (boolean)
            > RW indicates whether the mount is mounted writable (read-write).


        * Changed property `Propagation` (string)

    * Changed property `Config` (object)
        > It should hold only portable information about the container.
        > Here, "portable" means "independent from the host we are running on".
        > Non-portable information *should* appear in HostConfig.
        > All fields added to this struct must be marked `omitempty` to keep getting
        > predictable hashes from the old `v1Compatibility` configuration.


        * Changed property `Hostname` (string)

        * Changed property `Domainname` (string)

        * Changed property `User` (string)

        * Changed property `AttachStdin` (boolean)

        * Changed property `AttachStdout` (boolean)

        * Changed property `AttachStderr` (boolean)

        * Changed property `ExposedPorts` (object)
            > PortSet is a collection of structs indexed by Port


        * Changed property `Tty` (boolean)

        * Changed property `OpenStdin` (boolean)

        * Changed property `StdinOnce` (boolean)

        * Changed property `Env` (array)

        * Changed property `Cmd` (array)
            > We need to override the json decoder to accept both options.


        * Changed property `ArgsEscaped` (boolean)

        * Changed property `Image` (string)

        * Changed property `Volumes` (object)

        * Changed property `WorkingDir` (string)

        * Changed property `Entrypoint` (array)
            > We need to override the json decoder to accept both options.


        * Changed property `NetworkDisabled` (boolean)

        * Changed property `MacAddress` (string)
            > Mac Address of the container.
            >
            > Deprecated: this field is deprecated since API v1.44. Use EndpointSettings.MacAddress instead.


        * Changed property `OnBuild` (array)

        * Changed property `Labels` (object)

        * Changed property `StopSignal` (string)

        * Changed property `StopTimeout` (integer -> integer)

        * Changed property `Shell` (array)
            > We need to override the json decoder to accept both options.


        * Changed property `Healthcheck` (object)

            * Changed property `Test` (array)
                > Test is the test to perform to check that the container is healthy.
                > An empty slice means to inherit the default.
                > The options are:
                > {} : inherit healthcheck
                > {"NONE"} : disable healthcheck
                > {"CMD", args...} : exec arguments directly
                > {"CMD-SHELL", command} : run command with system's default shell


            * Changed property `Interval` (integer)
                > A Duration represents the elapsed time between two instants
                > as an int64 nanosecond count. The representation limits the
                > largest representable duration to approximately 290 years.


            * Changed property `Timeout` (integer)
                > A Duration represents the elapsed time between two instants
                > as an int64 nanosecond count. The representation limits the
                > largest representable duration to approximately 290 years.


            * Changed property `Retries` (integer -> integer)
                > Retries is the number of consecutive failures needed to consider a container as unhealthy.
                > Zero means inherit.


            * Changed property `StartPeriod` (integer)
                > A Duration represents the elapsed time between two instants
                > as an int64 nanosecond count. The representation limits the
                > largest representable duration to approximately 290 years.


            * Changed property `StartInterval` (integer)
                > A Duration represents the elapsed time between two instants
                > as an int64 nanosecond count. The representation limits the
                > largest representable duration to approximately 290 years.


    * Changed property `State` (object)
        > ContainerState stores container's running state
        > it's part of ContainerJSONBase and will return by "inspect" command


        * Changed property `Status` (string)

            Removed enum values:

            * `created`
            * `running`
            * `paused`
            * `restarting`
            * `removing`
            * `exited`
            * `dead`
        * Changed property `Running` (boolean)

        * Changed property `Paused` (boolean)

        * Changed property `Restarting` (boolean)

        * Changed property `OOMKilled` (boolean)

        * Changed property `Pid` (integer -> integer)

        * Changed property `ExitCode` (integer -> integer)

        * Changed property `StartedAt` (string)

        * Changed property `FinishedAt` (string)

        * Changed property `Health` (object)
            > Health stores information about the container's healthcheck results


            * Changed property `Status` (string)

                Removed enum values:

                * `none`
                * `starting`
                * `healthy`
                * `unhealthy`
            * Changed property `FailingStreak` (integer -> integer)

            * Changed property `Log` (array)

                Changed items (object):
                    > HealthcheckResult stores information about a single run of a healthcheck probe


                * Changed property `Start` (string)

                * Changed property `End` (string -> string)

                * Changed property `ExitCode` (integer -> integer)

                * Changed property `Output` (string)

    * Changed property `HostConfig` (object)
        > Here, "non-portable" means "dependent of the host we are running on".
        > Portable information *should* appear in Config.


        * Added property `KernelMemory` (integer)
            > KernelMemory specifies the kernel memory limit (in bytes) for the container.
            > Deprecated: kernel 5.4 deprecated kmem.limit_in_bytes.


        * Changed property `CpuShares` (integer -> integer)
            > Applicable to all platforms


        * Changed property `Memory` (integer)

        * Changed property `CgroupParent` (string)
            > Applicable to UNIX platforms


        * Changed property `BlkioWeight` (integer -> integer)

        * Changed property `BlkioWeightDevice` (array)

            Changed items (object):
                > WeightDevice is a structure that holds device:weight pair


            * Changed property `Weight` (integer -> integer)

        * Changed property `BlkioDeviceWriteBps` (array)

        * Changed property `BlkioDeviceReadIOps` (array)

        * Changed property `BlkioDeviceWriteIOps` (array)

        * Changed property `CpuPeriod` (integer)

        * Changed property `CpuQuota` (integer)

        * Changed property `CpuRealtimePeriod` (integer)

        * Changed property `CpuRealtimeRuntime` (integer)

        * Changed property `CpusetCpus` (string)

        * Changed property `CpusetMems` (string)

        * Changed property `DeviceCgroupRules` (array)

        * Changed property `KernelMemoryTCP` (integer)

        * Changed property `MemoryReservation` (integer)

        * Changed property `MemorySwap` (integer)

        * Changed property `MemorySwappiness` (integer)

        * Changed property `NanoCpus` (integer)

        * Changed property `OomKillDisable` (boolean)

        * Changed property `Init` (boolean)
            > Run a custom init inside the container, if null, use the daemon's configured settings


        * Changed property `PidsLimit` (integer)

        * Changed property `Ulimits` (array)

            Changed items (object):

            * Changed property `Name` (string)

            * Changed property `Soft` (integer -> integer)

            * Changed property `Hard` (integer -> integer)

        * Changed property `CpuCount` (integer)
            > Applicable to Windows


        * Changed property `CpuPercent` (integer)

        * Changed property `IOMaximumIOps` (integer -> integer)

        * Changed property `IOMaximumBandwidth` (integer -> integer)

        * Changed property `Binds` (array)
            > Applicable to all platforms


        * Changed property `ContainerIDFile` (string)

        * Changed property `LogConfig` (object)

            * Changed property `Type` (string)

                Removed enum values:

                * `json-file`
                * `syslog`
                * `journald`
                * `gelf`
                * `fluentd`
                * `awslogs`
                * `splunk`
                * `etwlogs`
                * `none`
        * Changed property `NetworkMode` (string)

        * Changed property `AutoRemove` (boolean)

        * Changed property `VolumeDriver` (string)

        * Changed property `VolumesFrom` (array)

        * Changed property `ConsoleSize` (array)

            Changed items (integer -> integer):

        * Changed property `Annotations` (object)

        * Changed property `CapAdd` (array)
            > We need to override the json decoder to accept both options.


        * Changed property `CapDrop` (array)
            > We need to override the json decoder to accept both options.


        * Changed property `CgroupnsMode` (string)
            > CgroupnsMode represents the cgroup namespace mode of the container


            Removed enum values:

            * `private`
            * `host`
        * Changed property `Dns` (array)

        * Changed property `DnsOptions` (array)

        * Changed property `DnsSearch` (array)

        * Changed property `ExtraHosts` (array)

        * Changed property `GroupAdd` (array)

        * Changed property `IpcMode` (string)

        * Changed property `Cgroup` (string)

        * Changed property `Links` (array)

        * Changed property `OomScoreAdj` (integer -> integer)

        * Changed property `PidMode` (string)

        * Changed property `Privileged` (boolean)

        * Changed property `PublishAllPorts` (boolean)

        * Changed property `ReadonlyRootfs` (boolean)

        * Changed property `SecurityOpt` (array)

        * Changed property `StorageOpt` (object)

        * Changed property `Tmpfs` (object)

        * Changed property `UTSMode` (string)

        * Changed property `UsernsMode` (string)

        * Changed property `ShmSize` (integer)

        * Changed property `Sysctls` (object)

        * Changed property `Runtime` (string)

        * Changed property `Isolation` (string)
            > Isolation represents the isolation technology of a container. The supported
            > values are platform specific


            Removed enum values:

            * `default`
            * `process`
            * `hyperv`
        * Changed property `MaskedPaths` (array)
            > MaskedPaths is the list of paths to be masked inside the container (this overrides the default set of paths)


        * Changed property `ReadonlyPaths` (array)
            > ReadonlyPaths is the list of paths to be set as read-only inside the container (this overrides the default set of paths)


        * Changed property `BlkioDeviceReadBps` (array)

            Changed items (object):
                > ThrottleDevice is a structure that holds device:rate_per_second pair


            * Changed property `Path` (string)

            * Changed property `Rate` (integer -> integer)

        * Changed property `Devices` (array)

            Changed items (object):

        * Changed property `DeviceRequests` (array)

            Changed items (object):
                > Used by GPU device drivers.


            * Changed property `Count` (integer -> integer)

            * Changed property `Capabilities` (array)

            * Changed property `Options` (object)

        * Changed property `RestartPolicy` (object)

            * Changed property `Name` (string)

                Removed enum values:

                * ``
                * `no`
                * `always`
                * `unless-stopped`
                * `on-failure`
            * Changed property `MaximumRetryCount` (integer -> integer)

        * Changed property `Mounts` (array)
            > Mounts specs used by the container


            Changed items (object):

            * Added property `ClusterOptions` (object)

            * Changed property `Target` (string)

            * Changed property `Source` (string)
                > Source specifies the name of the mount. Depending on mount type, this
                > may be a volume name or a host path, or even ignored.
                > Source is not supported for tmpfs (must be an empty value)


            * Changed property `Type` (string)

                Removed enum values:

                * `bind`
                * `volume`
                * `tmpfs`
                * `npipe`
                * `cluster`
            * Changed property `ReadOnly` (boolean)

            * Changed property `Consistency` (string)

            * Changed property `BindOptions` (object)

                * Changed property `Propagation` (string)

                    Removed enum values:

                    * `private`
                    * `rprivate`
                    * `shared`
                    * `rshared`
                    * `slave`
                    * `rslave`
                * Changed property `NonRecursive` (boolean)

                * Changed property `CreateMountpoint` (boolean)

                * Changed property `ReadOnlyNonRecursive` (boolean)
                    > ReadOnlyNonRecursive makes the mount non-recursively read-only, but still leaves the mount recursive
                    > (unless NonRecursive is set to true in conjunction).


                * Changed property `ReadOnlyForceRecursive` (boolean)
                    > ReadOnlyForceRecursive raises an error if the mount cannot be made recursively read-only.


            * Changed property `VolumeOptions` (object)

                * Changed property `NoCopy` (boolean)

                * Changed property `Labels` (object)

                * Changed property `DriverConfig` (object)

                    * Changed property `Name` (string)

                    * Changed property `Options` (object)

                * Changed property `Subpath` (string)

            * Changed property `TmpfsOptions` (object)

                * Changed property `SizeBytes` (integer)
                    > Size sets the size of the tmpfs, in bytes.
                    >
                    > This will be converted to an operating system specific value
                    > depending on the host. For example, on linux, it will be converted to
                    > use a 'k', 'm' or 'g' syntax. BSD, though not widely supported with
                    > docker, uses a straight byte value.
                    >
                    > Percentages are not supported.


                * Changed property `Mode` (integer -> integer)
                    > The bits have the same definition on all systems, so that
                    > information about files can be moved from one system
                    > to another portably. Not all bits apply to all systems.
                    > The only required bit is [ModeDir] for directories.


                * Changed property `Options` (array)
                    > Options to be passed to the tmpfs mount. An array of arrays. Flag
                    > options should be provided as 1-length arrays. Other types should be
                    > provided as 2-length arrays, where the first item is the key and the
                    > second the value.


        * Changed property `PortBindings` (object)
            > PortMap is a collection of PortBinding indexed by Port


    * Changed property `NetworkSettings` (object)
        > NetworkSettings exposes the network settings in the api


        * Changed property `Bridge` (string)

        * Changed property `SandboxID` (string)

        * Changed property `HairpinMode` (boolean)
            > HairpinMode specifies if hairpin NAT should be enabled on the virtual interface
            >
            > Deprecated: This field is never set and will be removed in a future release.


        * Changed property `LinkLocalIPv6Address` (string)
            > LinkLocalIPv6Address is an IPv6 unicast address using the link-local prefix
            >
            > Deprecated: This field is never set and will be removed in a future release.


        * Changed property `LinkLocalIPv6PrefixLen` (integer -> integer)
            > LinkLocalIPv6PrefixLen is the prefix length of an IPv6 unicast address
            >
            > Deprecated: This field is never set and will be removed in a future release.


        * Changed property `SandboxKey` (string)

        * Changed property `SecondaryIPv6Addresses` (array)

        * Changed property `EndpointID` (string)

        * Changed property `Gateway` (string)

        * Changed property `GlobalIPv6Address` (string)

        * Changed property `GlobalIPv6PrefixLen` (integer -> integer)

        * Changed property `IPAddress` (string)

        * Changed property `IPPrefixLen` (integer -> integer)

        * Changed property `IPv6Gateway` (string)

        * Changed property `MacAddress` (string)

        * Changed property `SecondaryIPAddresses` (array)

            Changed items (object):

            * Added property `PrefixLength` (integer)

            * Deleted property `PrefixLen` (integer)
                > Mask length of the IP address.


            * Changed property `Addr` (string)

        * Changed property `Networks` (object)

##### `GET` /images/{name}/json


###### Parameters:

Changed: `name` in `path`
> the name or ID of the container


###### Return Type:

Changed response : **404 Not Found**
> No such image


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **200 OK**
> Image Inspect


* Changed content type : `application/json`

    * Added property `Container` (string)
        > Container is for backwards compat but is basically unused


    * Added property `ContainerConfig` (object)
        > It should hold only portable information about the container.
        > Here, "portable" means "independent from the host we are running on".
        > Non-portable information *should* appear in HostConfig.
        > All fields added to this struct must be marked `omitempty` to keep getting
        > predictable hashes from the old `v1Compatibility` configuration.


    * Changed property `Id` (string)
        > ID is the content-addressable ID of an image.
        >
        > This identifier is a content-addressable digest calculated from the
        > image's configuration (which includes the digests of layers used by
        > the image).
        >
        > Note that this digest differs from the `RepoDigests` below, which
        > holds digests of image manifests that reference the image.


    * Changed property `RepoTags` (array)
        > RepoTags is a list of image names/tags in the local image cache that
        > reference this image.
        >
        > Multiple image tags can refer to the same image, and this list may be
        > empty if no tags reference the image, in which case the image is
        > "untagged", in which case it can still be referenced by its ID.


    * Changed property `RepoDigests` (array)
        > RepoDigests is a list of content-addressable digests of locally available
        > image manifests that the image is referenced from. Multiple manifests can
        > refer to the same image.
        >
        > These digests are usually only available if the image was either pulled
        > from a registry, or if the image was pushed to a registry, which is when
        > the manifest is generated and its digest calculated.


    * Changed property `Parent` (string)
        > Parent is the ID of the parent image.
        >
        > Depending on how the image was created, this field may be empty and
        > is only set for images that were built/created locally. This field
        > is empty if the image was pulled from an image registry.


    * Changed property `Comment` (string)
        > Comment is an optional message that can be set when committing or
        > importing the image.


    * Changed property `Created` (string -> string)
        > Created is the date and time at which the image was created, formatted in
        > RFC 3339 nano-seconds (time.RFC3339Nano).
        >
        > This information is only available if present in the image,
        > and omitted otherwise.


    * Changed property `DockerVersion` (string)
        > DockerVersion is the version of Docker that was used to build the image.
        >
        > Depending on how the image was created, this field may be empty.


    * Changed property `Author` (string)
        > Author is the name of the author that was specified when committing the
        > image, or as specified through MAINTAINER (deprecated) in the Dockerfile.


    * Changed property `Architecture` (string)
        > Architecture is the hardware CPU architecture that the image runs on.


    * Changed property `Variant` (string)
        > Variant is the CPU architecture variant (presently ARM-only).


    * Changed property `Os` (string)
        > OS is the Operating System the image is built to run on.


    * Changed property `OsVersion` (string)
        > OsVersion is the version of the Operating System the image is built to
        > run on (especially for Windows).


    * Changed property `Size` (integer)
        > Size is the total size of the image including all layers it is composed of.


    * Changed property `VirtualSize` (integer)
        > VirtualSize is the total size of the image including all layers it is
        > composed of.
        >
        > Deprecated: this field is omitted in API v1.44, but kept for backward compatibility. Use Size instead.


    * Changed property `RootFS` (object)

        New optional properties:
        - `Type`

        * Changed property `Layers` (array)

            Changed items (string):
                > The following is an example of the contents of Digest types:
                >
                > sha256:7173b809ca12ec5dee4506cd86be934c4596dd234ee82c0662eac04a8c2c71dc
                >
                > This allows to abstract the digest behind this type and work only in those
                > terms.


    * Changed property `Metadata` (object)

        * Changed property `LastTagTime` (string -> string)
            > LastTagTime is the date and time at which the image was last tagged.


    * Changed property `GraphDriver` (object)
        > GraphDriverData Information about the storage driver used to store the container's and
        > image's filesystem.


        * Changed property `Data` (object)
            > Low-level storage metadata, provided as key/value pairs.
            >
            > This information is driver-specific, and depends on the storage-driver
            > in use, and should be used for informational purposes only.


    * Changed property `Config` (object)
        > It should hold only portable information about the container.
        > Here, "portable" means "independent from the host we are running on".
        > Non-portable information *should* appear in HostConfig.
        > All fields added to this struct must be marked `omitempty` to keep getting
        > predictable hashes from the old `v1Compatibility` configuration.


        * Changed property `Hostname` (string)

        * Changed property `Domainname` (string)

        * Changed property `User` (string)

        * Changed property `AttachStdin` (boolean)

        * Changed property `AttachStdout` (boolean)

        * Changed property `AttachStderr` (boolean)

        * Changed property `ExposedPorts` (object)
            > PortSet is a collection of structs indexed by Port


        * Changed property `Tty` (boolean)

        * Changed property `OpenStdin` (boolean)

        * Changed property `StdinOnce` (boolean)

        * Changed property `Env` (array)

        * Changed property `Cmd` (array)
            > We need to override the json decoder to accept both options.


        * Changed property `ArgsEscaped` (boolean)

        * Changed property `Image` (string)

        * Changed property `Volumes` (object)

        * Changed property `WorkingDir` (string)

        * Changed property `Entrypoint` (array)
            > We need to override the json decoder to accept both options.


        * Changed property `NetworkDisabled` (boolean)

        * Changed property `MacAddress` (string)
            > Mac Address of the container.
            >
            > Deprecated: this field is deprecated since API v1.44. Use EndpointSettings.MacAddress instead.


        * Changed property `OnBuild` (array)

        * Changed property `Labels` (object)

        * Changed property `StopSignal` (string)

        * Changed property `StopTimeout` (integer -> integer)

        * Changed property `Shell` (array)
            > We need to override the json decoder to accept both options.


        * Changed property `Healthcheck` (object)

            * Changed property `Test` (array)
                > Test is the test to perform to check that the container is healthy.
                > An empty slice means to inherit the default.
                > The options are:
                > {} : inherit healthcheck
                > {"NONE"} : disable healthcheck
                > {"CMD", args...} : exec arguments directly
                > {"CMD-SHELL", command} : run command with system's default shell


            * Changed property `Interval` (integer)
                > A Duration represents the elapsed time between two instants
                > as an int64 nanosecond count. The representation limits the
                > largest representable duration to approximately 290 years.


            * Changed property `Timeout` (integer)
                > A Duration represents the elapsed time between two instants
                > as an int64 nanosecond count. The representation limits the
                > largest representable duration to approximately 290 years.


            * Changed property `Retries` (integer -> integer)
                > Retries is the number of consecutive failures needed to consider a container as unhealthy.
                > Zero means inherit.


            * Changed property `StartPeriod` (integer)
                > A Duration represents the elapsed time between two instants
                > as an int64 nanosecond count. The representation limits the
                > largest representable duration to approximately 290 years.


            * Changed property `StartInterval` (integer)
                > A Duration represents the elapsed time between two instants
                > as an int64 nanosecond count. The representation limits the
                > largest representable duration to approximately 290 years.


##### `POST` /volumes/create


###### Request:
> attributes for creating a volume.
> Note: If a volume by the same name exists, a 201 response with that volume's information will be generated.


New content type : `application/x-tar`

Changed content type : `application/json`

New required properties:
- `Driver`
- `DriverOpts`
- `Labels`
- `Name`

* Deleted property `ClusterVolumeSpec` (object)

* Changed property `Name` (string)
    > The new volume's name. If not specified, Docker generates a name.


* Changed property `DriverOpts` (object)
    > A mapping of driver options and values. These options are
    > passed directly to the driver and are driver specific.


###### Return Type:

Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **201 Created**
> This response definition is used for both the create and inspect endpoints


* Changed content type : `application/json`

    * Changed property `CreatedAt` (string -> string)
        > Date/Time the volume was created.


    * Changed property `Status` (object)
        > Low-level details about the volume, provided by the volume driver.
        > Details are returned as a map with key/value pairs:
        > `{"key":"value","key2":"value2"}`.
        >
        > The `Status` field is optional, and is omitted if the volume driver
        > does not support this feature.


    * Changed property `Scope` (string)
        > The level at which the volume exists. Either `global` for cluster-wide,
        > or `local` for machine level.


        Removed enum values:

        * `local`
        * `global`
    * Changed property `Options` (object)
        > The driver specific options used when creating the volume.


    * Changed property `UsageData` (object)
        > UsageData Usage details about the volume. This information is used by the
        > `GET /system/df` endpoint, and omitted in other endpoints.


        * Changed property `Size` (integer)
            > Amount of disk space used by the volume (in bytes). This information
            > is only available for volumes created with the `"local"` volume
            > driver. For volumes created with other volume drivers, this field
            > is set to `-1` ("not available")


        * Changed property `RefCount` (integer)
            > The number of containers referencing this volume. This field
            > is set to `-1` if the reference-count is not available.


    * Changed property `ClusterVolume` (object)
        > ClusterVolume contains options and information specific to, and only present
        > on, Swarm CSI cluster volumes.


        * Changed property `ID` (string)
            > ID is the Swarm ID of the volume. Because cluster volumes are Swarm
            > objects, they have an ID, unlike non-cluster volumes, which only have a
            > Name. This ID can be used to refer to the cluster volume.


        * Changed property `CreatedAt` (string -> string)

        * Changed property `UpdatedAt` (string -> string)

        * Changed property `PublishStatus` (array)
            > PublishStatus contains the status of the volume as it pertains to its
            > publishing on Nodes.


            Changed items (object):
                > PublishStatus represents the status of the volume as published to an
                > individual node


            * Changed property `NodeID` (string)
                > NodeID is the ID of the swarm node this Volume is published to.


            * Changed property `State` (string)
                > PublishState represents the state of a Volume as it pertains to its
                > use on a particular Node.


                Removed enum values:

                * `pending-publish`
                * `published`
                * `pending-node-unpublish`
                * `pending-controller-unpublish`
            * Changed property `PublishContext` (object)
                > PublishContext is the PublishContext returned by the CSI plugin when
                > a volume is published.


        * Changed property `Version` (object)

        * Changed property `Spec` (object)

            * Added property `AccessibilityRequirements` (object)
                > TopologyRequirement expresses the user's requirements for a volume's
                > accessible topology.


                * Property `Preferred` (array)
                    > Preferred is a list of Topologies that the volume should attempt to be
                    > provisioned in.
                    >
                    > Taken from the CSI spec:
                    >
                    > Specifies the list of topologies the CO would prefer the volume to
                    > be provisioned in.
                    >
                    > This field is OPTIONAL. If TopologyRequirement is specified either
                    > requisite or preferred or both MUST be specified.
                    >
                    > An SP MUST attempt to make the provisioned volume available using
                    > the preferred topologies in order from first to last.
                    >
                    > If requisite is specified, all topologies in preferred list MUST
                    > also be present in the list of requisite topologies.
                    >
                    > If the SP is unable to make the provisioned volume available
                    > from any of the preferred topologies, the SP MAY choose a topology
                    > from the list of requisite topologies.
                    > If the list of requisite topologies is not specified, then the SP
                    > MAY choose from the list of all possible topologies.
                    > If the list of requisite topologies is specified and the SP is
                    > unable to make the provisioned volume available from any of the
                    > requisite topologies it MUST fail the CreateVolume call.
                    >
                    > Example 1:
                    > Given a volume should be accessible from a single zone, and
                    > requisite =
                    > {"region": "R1", "zone": "Z2"},
                    > {"region": "R1", "zone": "Z3"}
                    > preferred =
                    > {"region": "R1", "zone": "Z3"}
                    > then the SP SHOULD first attempt to make the provisioned volume
                    > available from "zone" "Z3" in the "region" "R1" and fall back to
                    > "zone" "Z2" in the "region" "R1" if that is not possible.
                    >
                    > Example 2:
                    > Given a volume should be accessible from a single zone, and
                    > requisite =
                    > {"region": "R1", "zone": "Z2"},
                    > {"region": "R1", "zone": "Z3"},
                    > {"region": "R1", "zone": "Z4"},
                    > {"region": "R1", "zone": "Z5"}
                    > preferred =
                    > {"region": "R1", "zone": "Z4"},
                    > {"region": "R1", "zone": "Z2"}
                    > then the SP SHOULD first attempt to make the provisioned volume
                    > accessible from "zone" "Z4" in the "region" "R1" and fall back to
                    > "zone" "Z2" in the "region" "R1" if that is not possible. If that
                    > is not possible, the SP may choose between either the "zone"
                    > "Z3" or "Z5" in the "region" "R1".
                    >
                    > Example 3:
                    > Given a volume should be accessible from TWO zones (because an
                    > opaque parameter in CreateVolumeRequest, for example, specifies
                    > the volume is accessible from two zones, aka synchronously
                    > replicated), and
                    > requisite =
                    > {"region": "R1", "zone": "Z2"},
                    > {"region": "R1", "zone": "Z3"},
                    > {"region": "R1", "zone": "Z4"},
                    > {"region": "R1", "zone": "Z5"}
                    > preferred =
                    > {"region": "R1", "zone": "Z5"},
                    > {"region": "R1", "zone": "Z3"}
                    > then the SP SHOULD first attempt to make the provisioned volume
                    > accessible from the combination of the two "zones" "Z5" and "Z3" in
                    > the "region" "R1". If that's not possible, it should fall back to
                    > a combination of "Z5" and other possibilities from the list of
                    > requisite. If that's not possible, it should fall back  to a
                    > combination of "Z3" and other possibilities from the list of
                    > requisite. If that's not possible, it should fall back  to a
                    > combination of other possibilities from the list of requisite.


                    Items (object):
                        > This description is taken verbatim from the CSI Spec:
                        >
                        > A topological domain is a sub-division of a cluster, like "region",
                        > "zone", "rack", etc.
                        > A topological segment is a specific instance of a topological domain,
                        > like "zone3", "rack3", etc.
                        > For example {"com.company/zone": "Z1", "com.company/rack": "R3"}
                        > Valid keys have two segments: an OPTIONAL prefix and name, separated
                        > by a slash (/), for example: "com.company.example/zone".
                        > The key name segment is REQUIRED. The prefix is OPTIONAL.
                        > The key name MUST be 63 characters or less, begin and end with an
                        > alphanumeric character ([a-z0-9A-Z]), and contain only dashes (-),
                        > underscores (_), dots (.), or alphanumerics in between, for example
                        > "zone".
                        > The key prefix MUST be 63 characters or less, begin and end with a
                        > lower-case alphanumeric character ([a-z0-9]), contain only
                        > dashes (-), dots (.), or lower-case alphanumerics in between, and
                        > follow domain name notation format
                        > (https://tools.ietf.org/html/rfc1035#section-2.3.1).
                        > The key prefix SHOULD include the plugin's host company name and/or
                        > the plugin name, to minimize the possibility of collisions with keys
                        > from other plugins.
                        > If a key prefix is specified, it MUST be identical across all
                        > topology keys returned by the SP (across all RPCs).
                        > Keys MUST be case-insensitive. Meaning the keys "Zone" and "zone"
                        > MUST not both exist.
                        > Each value (topological segment) MUST contain 1 or more strings.
                        > Each string MUST be 63 characters or less and begin and end with an
                        > alphanumeric character with '-', '_', '.', or alphanumerics in
                        > between.


                    * Property `Segments` (object)

                * Property `Requisite` (array)
                    > Requisite specifies a list of Topologies, at least one of which the
                    > volume must be accessible from.
                    >
                    > Taken verbatim from the CSI Spec:
                    >
                    > Specifies the list of topologies the provisioned volume MUST be
                    > accessible from.
                    > This field is OPTIONAL. If TopologyRequirement is specified either
                    > requisite or preferred or both MUST be specified.
                    >
                    > If requisite is specified, the provisioned volume MUST be
                    > accessible from at least one of the requisite topologies.
                    >
                    > Given
                    > x = number of topologies provisioned volume is accessible from
                    > n = number of requisite topologies
                    > The CO MUST ensure n >= 1. The SP MUST ensure x >= 1
                    > If x==n, then the SP MUST make the provisioned volume available to
                    > all topologies from the list of requisite topologies. If it is
                    > unable to do so, the SP MUST fail the CreateVolume call.
                    > For example, if a volume should be accessible from a single zone,
                    > and requisite =
                    > {"region": "R1", "zone": "Z2"}
                    > then the provisioned volume MUST be accessible from the "region"
                    > "R1" and the "zone" "Z2".
                    > Similarly, if a volume should be accessible from two zones, and
                    > requisite =
                    > {"region": "R1", "zone": "Z2"},
                    > {"region": "R1", "zone": "Z3"}
                    > then the provisioned volume MUST be accessible from the "region"
                    > "R1" and both "zone" "Z2" and "zone" "Z3".
                    >
                    > If x<n, then the SP SHALL choose x unique topologies from the list
                    > of requisite topologies. If it is unable to do so, the SP MUST fail
                    > the CreateVolume call.
                    > For example, if a volume should be accessible from a single zone,
                    > and requisite =
                    > {"region": "R1", "zone": "Z2"},
                    > {"region": "R1", "zone": "Z3"}
                    > then the SP may choose to make the provisioned volume available in
                    > either the "zone" "Z2" or the "zone" "Z3" in the "region" "R1".
                    > Similarly, if a volume should be accessible from two zones, and
                    > requisite =
                    > {"region": "R1", "zone": "Z2"},
                    > {"region": "R1", "zone": "Z3"},
                    > {"region": "R1", "zone": "Z4"}
                    > then the provisioned volume MUST be accessible from any combination
                    > of two unique topologies: e.g. "R1/Z2" and "R1/Z3", or "R1/Z2" and
                    > "R1/Z4", or "R1/Z3" and "R1/Z4".
                    >
                    > If x>n, then the SP MUST make the provisioned volume available from
                    > all topologies from the list of requisite topologies and MAY choose
                    > the remaining x-n unique topologies from the list of all possible
                    > topologies. If it is unable to do so, the SP MUST fail the
                    > CreateVolume call.
                    > For example, if a volume should be accessible from two zones, and
                    > requisite =
                    > {"region": "R1", "zone": "Z2"}
                    > then the provisioned volume MUST be accessible from the "region"
                    > "R1" and the "zone" "Z2" and the SP may select the second zone
                    > independently, e.g. "R1/Z4".


                    Items (object):
                        > This description is taken verbatim from the CSI Spec:
                        >
                        > A topological domain is a sub-division of a cluster, like "region",
                        > "zone", "rack", etc.
                        > A topological segment is a specific instance of a topological domain,
                        > like "zone3", "rack3", etc.
                        > For example {"com.company/zone": "Z1", "com.company/rack": "R3"}
                        > Valid keys have two segments: an OPTIONAL prefix and name, separated
                        > by a slash (/), for example: "com.company.example/zone".
                        > The key name segment is REQUIRED. The prefix is OPTIONAL.
                        > The key name MUST be 63 characters or less, begin and end with an
                        > alphanumeric character ([a-z0-9A-Z]), and contain only dashes (-),
                        > underscores (_), dots (.), or alphanumerics in between, for example
                        > "zone".
                        > The key prefix MUST be 63 characters or less, begin and end with a
                        > lower-case alphanumeric character ([a-z0-9]), contain only
                        > dashes (-), dots (.), or lower-case alphanumerics in between, and
                        > follow domain name notation format
                        > (https://tools.ietf.org/html/rfc1035#section-2.3.1).
                        > The key prefix SHOULD include the plugin's host company name and/or
                        > the plugin name, to minimize the possibility of collisions with keys
                        > from other plugins.
                        > If a key prefix is specified, it MUST be identical across all
                        > topology keys returned by the SP (across all RPCs).
                        > Keys MUST be case-insensitive. Meaning the keys "Zone" and "zone"
                        > MUST not both exist.
                        > Each value (topological segment) MUST contain 1 or more strings.
                        > Each string MUST be 63 characters or less and begin and end with an
                        > alphanumeric character with '-', '_', '.', or alphanumerics in
                        > between.


            * Added property `Availability` (string)

            * Added property `CapacityRange` (object)
                > CapacityRange describes the minimum and maximum capacity a volume should be
                > created with


                * Property `LimitBytes` (integer)
                    > LimitBytes specifies that a volume must not be bigger than this. The
                    > value of 0 indicates an unspecified maximum


                * Property `RequiredBytes` (integer)
                    > RequiredBytes specifies that a volume must be at least this big. The
                    > value of 0 indicates an unspecified minimum.


            * Added property `Secrets` (array)
                > Secrets defines Swarm Secrets that are passed to the CSI storage plugin
                > when operating on this volume.


                Items (object):
                    > Secret represents a Swarm Secret value that must be passed to the CSI
                    > storage plugin when operating on this Volume. It represents one key-value
                    > pair of possibly many.


                * Property `Key` (string)
                    > Key is the name of the key of the key-value pair passed to the plugin.


                * Property `Secret` (string)
                    > Secret is the swarm Secret object from which to read data. This can be a
                    > Secret name or ID. The Secret data is retrieved by Swarm and used as the
                    > value of the key-value pair passed to the plugin.


            * Changed property `Group` (string)
                > Group defines the volume group of this volume. Volumes belonging to the
                > same group can be referred to by group name when creating Services.
                > Referring to a volume by group instructs swarm to treat volumes in that
                > group interchangeably for the purpose of scheduling. Volumes with an
                > empty string for a group technically all belong to the same, emptystring
                > group.


            * Changed property `AccessMode` (object)

                * Added property `BlockVolume` (object)
                    > Intentionally empty.


                * Deleted property `Secrets` (array)
                    > Swarm Secrets that are passed to the CSI storage plugin when
                    > operating on this volume.


                * Deleted property `AccessibilityRequirements` (object)
                    > Requirements for the accessible topology of the volume. These
                    > fields are optional. For an in-depth description of what these
                    > fields mean, see the CSI specification.


                * Deleted property `CapacityRange` (object)
                    > The desired capacity that the volume should be created with. If
                    > empty, the plugin will decide the capacity.


                * Deleted property `Availability` (string)
                    > The availability of the volume for use in tasks.
                    > - `active` The volume is fully available for scheduling on the cluster
                    > - `pause` No new workloads should use the volume, but existing workloads are not stopped.
                    > - `drain` All workloads using this volume should be stopped and rescheduled, and no new ones should be started.


                * Changed property `Scope` (string)
                    > Scope defines the Scope of a Cluster Volume. This is how many nodes a
                    > Volume can be accessed simultaneously on.


                    Removed enum values:

                    * `single`
                    * `multi`
                * Changed property `Sharing` (string)
                    > SharingMode defines the Sharing of a Cluster Volume. This is how Tasks using a
                    > Volume at the same time can use it.


                    Removed enum values:

                    * `none`
                    * `readonly`
                    * `onewriter`
                    * `all`
                * Changed property `MountVolume` (object)
                    > TypeMount contains options for using a volume as a Mount-type
                    > volume.


                    * Added property `FsType` (string)
                        > FsType specifies the filesystem type for the mount volume. Optional.


                    * Added property `MountFlags` (array)
                        > MountFlags defines flags to pass when mounting the volume. Optional.


                        Items (string):

        * Changed property `Info` (object)
            > Info contains information about the Volume as a whole as provided by
            > the CSI storage plugin.


            * Changed property `CapacityBytes` (integer)
                > CapacityBytes is the capacity of the volume in bytes. A value of 0
                > indicates that the capacity is unknown.


            * Changed property `VolumeContext` (object)
                > VolumeContext is the context originating from the CSI storage plugin
                > when the Volume is created.


            * Changed property `VolumeID` (string)
                > VolumeID is the ID of the Volume as seen by the CSI storage plugin. This
                > is distinct from the Volume's Swarm ID, which is the ID used by all of
                > the Docker Engine to refer to the Volume. If this field is blank, then
                > the Volume has not been successfully created yet.


            * Changed property `AccessibleTopology` (array)
                > AccessibleTopolgoy is the topology this volume is actually accessible
                > from.


                Changed items (object):
                    > This description is taken verbatim from the CSI Spec:
                    >
                    > A topological domain is a sub-division of a cluster, like "region",
                    > "zone", "rack", etc.
                    > A topological segment is a specific instance of a topological domain,
                    > like "zone3", "rack3", etc.
                    > For example {"com.company/zone": "Z1", "com.company/rack": "R3"}
                    > Valid keys have two segments: an OPTIONAL prefix and name, separated
                    > by a slash (/), for example: "com.company.example/zone".
                    > The key name segment is REQUIRED. The prefix is OPTIONAL.
                    > The key name MUST be 63 characters or less, begin and end with an
                    > alphanumeric character ([a-z0-9A-Z]), and contain only dashes (-),
                    > underscores (_), dots (.), or alphanumerics in between, for example
                    > "zone".
                    > The key prefix MUST be 63 characters or less, begin and end with a
                    > lower-case alphanumeric character ([a-z0-9]), contain only
                    > dashes (-), dots (.), or lower-case alphanumerics in between, and
                    > follow domain name notation format
                    > (https://tools.ietf.org/html/rfc1035#section-2.3.1).
                    > The key prefix SHOULD include the plugin's host company name and/or
                    > the plugin name, to minimize the possibility of collisions with keys
                    > from other plugins.
                    > If a key prefix is specified, it MUST be identical across all
                    > topology keys returned by the SP (across all RPCs).
                    > Keys MUST be case-insensitive. Meaning the keys "Zone" and "zone"
                    > MUST not both exist.
                    > Each value (topological segment) MUST contain 1 or more strings.
                    > Each string MUST be 63 characters or less and begin and end with an
                    > alphanumeric character with '-', '_', '.', or alphanumerics in
                    > between.


                * Added property `Segments` (object)

##### `DELETE` /volumes/{name}

> Remove volume


###### Parameters:

Changed: `name` in `path`
> the name or ID of the volume


Changed: `force` in `query`
> Force removal of the volume. This actually only causes errors due
> to the names volume not being found to be suppressed, which is the
> behaviour Docker implements.


###### Return Type:

Changed response : **204 No Content**
> no error

Changed response : **409 Conflict**
> Volume is in use and cannot be removed


* Deleted content type : `application/json`

* Deleted content type : `text/plain`

Changed response : **404 Not Found**
> No such volume


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `GET` /volumes/{name}

> Inspect volume


###### Parameters:

Changed: `name` in `path`
> the name or ID of the volume


###### Return Type:

Deleted response : **404 Not Found**
> No such volume

Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **200 OK**
> This response definition is used for both the create and inspect endpoints


* Changed content type : `application/json`

    * Changed property `CreatedAt` (string -> string)
        > Date/Time the volume was created.


    * Changed property `Status` (object)
        > Low-level details about the volume, provided by the volume driver.
        > Details are returned as a map with key/value pairs:
        > `{"key":"value","key2":"value2"}`.
        >
        > The `Status` field is optional, and is omitted if the volume driver
        > does not support this feature.


    * Changed property `Scope` (string)
        > The level at which the volume exists. Either `global` for cluster-wide,
        > or `local` for machine level.


        Removed enum values:

        * `local`
        * `global`
    * Changed property `Options` (object)
        > The driver specific options used when creating the volume.


    * Changed property `UsageData` (object)
        > UsageData Usage details about the volume. This information is used by the
        > `GET /system/df` endpoint, and omitted in other endpoints.


        * Changed property `Size` (integer)
            > Amount of disk space used by the volume (in bytes). This information
            > is only available for volumes created with the `"local"` volume
            > driver. For volumes created with other volume drivers, this field
            > is set to `-1` ("not available")


        * Changed property `RefCount` (integer)
            > The number of containers referencing this volume. This field
            > is set to `-1` if the reference-count is not available.


    * Changed property `ClusterVolume` (object)
        > ClusterVolume contains options and information specific to, and only present
        > on, Swarm CSI cluster volumes.


        * Changed property `ID` (string)
            > ID is the Swarm ID of the volume. Because cluster volumes are Swarm
            > objects, they have an ID, unlike non-cluster volumes, which only have a
            > Name. This ID can be used to refer to the cluster volume.


        * Changed property `CreatedAt` (string -> string)

        * Changed property `UpdatedAt` (string -> string)

        * Changed property `PublishStatus` (array)
            > PublishStatus contains the status of the volume as it pertains to its
            > publishing on Nodes.


            Changed items (object):
                > PublishStatus represents the status of the volume as published to an
                > individual node


            * Changed property `NodeID` (string)
                > NodeID is the ID of the swarm node this Volume is published to.


            * Changed property `State` (string)
                > PublishState represents the state of a Volume as it pertains to its
                > use on a particular Node.


                Removed enum values:

                * `pending-publish`
                * `published`
                * `pending-node-unpublish`
                * `pending-controller-unpublish`
            * Changed property `PublishContext` (object)
                > PublishContext is the PublishContext returned by the CSI plugin when
                > a volume is published.


        * Changed property `Version` (object)

        * Changed property `Spec` (object)

            * Added property `AccessibilityRequirements` (object)
                > TopologyRequirement expresses the user's requirements for a volume's
                > accessible topology.


            * Added property `Availability` (string)

            * Added property `CapacityRange` (object)
                > CapacityRange describes the minimum and maximum capacity a volume should be
                > created with


            * Added property `Secrets` (array)
                > Secrets defines Swarm Secrets that are passed to the CSI storage plugin
                > when operating on this volume.


            * Changed property `Group` (string)
                > Group defines the volume group of this volume. Volumes belonging to the
                > same group can be referred to by group name when creating Services.
                > Referring to a volume by group instructs swarm to treat volumes in that
                > group interchangeably for the purpose of scheduling. Volumes with an
                > empty string for a group technically all belong to the same, emptystring
                > group.


            * Changed property `AccessMode` (object)

                * Added property `BlockVolume` (object)
                    > Intentionally empty.


                * Deleted property `Secrets` (array)
                    > Swarm Secrets that are passed to the CSI storage plugin when
                    > operating on this volume.


                * Deleted property `AccessibilityRequirements` (object)
                    > Requirements for the accessible topology of the volume. These
                    > fields are optional. For an in-depth description of what these
                    > fields mean, see the CSI specification.


                * Deleted property `CapacityRange` (object)
                    > The desired capacity that the volume should be created with. If
                    > empty, the plugin will decide the capacity.


                * Deleted property `Availability` (string)
                    > The availability of the volume for use in tasks.
                    > - `active` The volume is fully available for scheduling on the cluster
                    > - `pause` No new workloads should use the volume, but existing workloads are not stopped.
                    > - `drain` All workloads using this volume should be stopped and rescheduled, and no new ones should be started.


                * Changed property `Scope` (string)
                    > Scope defines the Scope of a Cluster Volume. This is how many nodes a
                    > Volume can be accessed simultaneously on.


                    Removed enum values:

                    * `single`
                    * `multi`
                * Changed property `Sharing` (string)
                    > SharingMode defines the Sharing of a Cluster Volume. This is how Tasks using a
                    > Volume at the same time can use it.


                    Removed enum values:

                    * `none`
                    * `readonly`
                    * `onewriter`
                    * `all`
                * Changed property `MountVolume` (object)
                    > TypeMount contains options for using a volume as a Mount-type
                    > volume.


                    * Added property `FsType` (string)
                        > FsType specifies the filesystem type for the mount volume. Optional.


                    * Added property `MountFlags` (array)
                        > MountFlags defines flags to pass when mounting the volume. Optional.


        * Changed property `Info` (object)
            > Info contains information about the Volume as a whole as provided by
            > the CSI storage plugin.


            * Changed property `CapacityBytes` (integer)
                > CapacityBytes is the capacity of the volume in bytes. A value of 0
                > indicates that the capacity is unknown.


            * Changed property `VolumeContext` (object)
                > VolumeContext is the context originating from the CSI storage plugin
                > when the Volume is created.


            * Changed property `VolumeID` (string)
                > VolumeID is the ID of the Volume as seen by the CSI storage plugin. This
                > is distinct from the Volume's Swarm ID, which is the ID used by all of
                > the Docker Engine to refer to the Volume. If this field is blank, then
                > the Volume has not been successfully created yet.


            * Changed property `AccessibleTopology` (array)
                > AccessibleTopolgoy is the topology this volume is actually accessible
                > from.


                Changed items (object):
                    > This description is taken verbatim from the CSI Spec:
                    >
                    > A topological domain is a sub-division of a cluster, like "region",
                    > "zone", "rack", etc.
                    > A topological segment is a specific instance of a topological domain,
                    > like "zone3", "rack3", etc.
                    > For example {"com.company/zone": "Z1", "com.company/rack": "R3"}
                    > Valid keys have two segments: an OPTIONAL prefix and name, separated
                    > by a slash (/), for example: "com.company.example/zone".
                    > The key name segment is REQUIRED. The prefix is OPTIONAL.
                    > The key name MUST be 63 characters or less, begin and end with an
                    > alphanumeric character ([a-z0-9A-Z]), and contain only dashes (-),
                    > underscores (_), dots (.), or alphanumerics in between, for example
                    > "zone".
                    > The key prefix MUST be 63 characters or less, begin and end with a
                    > lower-case alphanumeric character ([a-z0-9]), contain only
                    > dashes (-), dots (.), or lower-case alphanumerics in between, and
                    > follow domain name notation format
                    > (https://tools.ietf.org/html/rfc1035#section-2.3.1).
                    > The key prefix SHOULD include the plugin's host company name and/or
                    > the plugin name, to minimize the possibility of collisions with keys
                    > from other plugins.
                    > If a key prefix is specified, it MUST be identical across all
                    > topology keys returned by the SP (across all RPCs).
                    > Keys MUST be case-insensitive. Meaning the keys "Zone" and "zone"
                    > MUST not both exist.
                    > Each value (topological segment) MUST contain 1 or more strings.
                    > Each string MUST be 63 characters or less and begin and end with an
                    > alphanumeric character with '-', '_', '.', or alphanumerics in
                    > between.


                * Added property `Segments` (object)

##### `GET` /networks


###### Parameters:

Changed: `filters` in `query`
> JSON encoded value of the filters (a `map[string][]string`) to process on the network list. Currently available filters:
>   - `name=[name]` Matches network name (accepts regex).
>   - `id=[id]` Matches for full or partial ID.
>   - `driver=[driver]` Only bridge is supported.
>   - `label=[key]` or `label=[key=value]` Matches networks based on the presence of a label alone or a label and a value.


###### Return Type:

Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **200 OK**
> Network list


* Changed content type : `application/json`

    Changed items (object):

    * Added property `Services` (object)

    * Changed property `Name` (string)

    * Changed property `Id` (string)

    * Changed property `Created` (string -> string)

    * Changed property `Scope` (string)

    * Changed property `Driver` (string)

    * Changed property `EnableIPv6` (boolean)

    * Changed property `Internal` (boolean)

    * Changed property `Attachable` (boolean)

    * Changed property `Ingress` (boolean)

    * Changed property `ConfigOnly` (boolean)

    * Changed property `Options` (object)

    * Changed property `Labels` (object)

    * Changed property `ConfigFrom` (object)
        > ConfigReference specifies the source which provides a network's configuration


        * Changed property `Network` (string)

    * Changed property `Containers` (object)

    * Changed property `Peers` (array)

        Changed items (object):
            > PeerInfo represents one peer of an overlay network


        * Changed property `Name` (string)

        * Changed property `IP` (string)

    * Changed property `IPAM` (object)
        > IPAM represents IP Address Management


        * Changed property `Driver` (string)

        * Changed property `Options` (object)

        * Changed property `Config` (array)

            Changed items (object):
                > IPAMConfig represents IPAM configurations


##### `DELETE` /networks/{id}


###### Parameters:

Added: `name` in `path`
> the name of the network


Deleted: `id` in `path`
> Network ID or name


###### Return Type:

Deleted response : **403 Forbidden**
> operation not supported for pre-defined networks

Changed response : **204 No Content**
> no error

Changed response : **404 Not Found**
> No such network


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Deleted content type : `text/plain`

* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `GET` /networks/{id}


###### Parameters:

Added: `name` in `path`
> the name of the network


Deleted: `id` in `path`
> Network ID or name


###### Return Type:

Changed response : **404 Not Found**
> No such network


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **200 OK**
> Network inspect


* Changed content type : `application/json`

    * Added property `Services` (object)

    * Changed property `Name` (string)

    * Changed property `Id` (string)

    * Changed property `Created` (string -> string)

    * Changed property `Scope` (string)

    * Changed property `Driver` (string)

    * Changed property `EnableIPv6` (boolean)

    * Changed property `Internal` (boolean)

    * Changed property `Attachable` (boolean)

    * Changed property `Ingress` (boolean)

    * Changed property `ConfigOnly` (boolean)

    * Changed property `Options` (object)

    * Changed property `Labels` (object)

    * Changed property `ConfigFrom` (object)
        > ConfigReference specifies the source which provides a network's configuration


        * Changed property `Network` (string)

    * Changed property `Containers` (object)

    * Changed property `Peers` (array)

        Changed items (object):
            > PeerInfo represents one peer of an overlay network


        * Changed property `Name` (string)

        * Changed property `IP` (string)

    * Changed property `IPAM` (object)
        > IPAM represents IP Address Management


        * Changed property `Driver` (string)

        * Changed property `Options` (object)

        * Changed property `Config` (array)

            Changed items (object):
                > IPAMConfig represents IPAM configurations


##### `GET` /secrets


###### Parameters:

Changed: `filters` in `query`
> JSON encoded value of the filters (a `map[string][]string`) to process on the secrets list. Currently available filters:
>   - `name=[name]` Matches secrets name (accepts regex).
>   - `id=[id]` Matches for full or partial ID.


###### Return Type:

Deleted response : **503 Service Unavailable**
> node is not part of a swarm

Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **200 OK**
> Secret list response


* Changed content type : `application/json`

    Changed items (object):

    * Added property `SecretData` (string)

    * Changed property `CreatedAt` (string -> string)

    * Changed property `UpdatedAt` (string -> string)

    * Changed property `Version` (object)

        * Changed property `Index` (integer -> integer)

    * Changed property `Spec` (object)

        * Deleted property `Data` (string)
            > Base64-url-safe-encoded ([RFC 4648](https://tools.ietf.org/html/rfc4648#section-5))
            > data to store as secret.
            >
            > This field is only used to _create_ a secret, and is not returned by
            > other endpoints.


        * Deleted property `Templating` (object)

        * Changed property `Name` (string)

        * Changed property `Labels` (object)

        * Changed property `Driver` (object)

            New optional properties:
            - `Name`

            * Changed property `Name` (string)

            * Changed property `Options` (object)

##### `DELETE` /secrets/{id}

> Remove secret


###### Parameters:

Added: `name` in `path`
> the name or ID of the secret


Deleted: `id` in `path`
> ID of the secret


###### Return Type:

Deleted response : **503 Service Unavailable**
> node is not part of a swarm

Changed response : **404 Not Found**
> No such secret


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


##### `GET` /secrets/{id}

> Inspect secret


###### Parameters:

Added: `name` in `path`
> the name or ID of the secret


Deleted: `id` in `path`
> ID of the secret


###### Return Type:

Deleted response : **503 Service Unavailable**
> node is not part of a swarm

Changed response : **404 Not Found**
> No such secret


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **200 OK**
> Secret inspect compat


* Changed content type : `application/json`

    * Added property `SecretData` (string)

    * Changed property `CreatedAt` (string -> string)

    * Changed property `UpdatedAt` (string -> string)

    * Changed property `Version` (object)

        * Changed property `Index` (integer -> integer)

    * Changed property `Spec` (object)

        * Deleted property `Data` (string)
            > Base64-url-safe-encoded ([RFC 4648](https://tools.ietf.org/html/rfc4648#section-5))
            > data to store as secret.
            >
            > This field is only used to _create_ a secret, and is not returned by
            > other endpoints.


        * Deleted property `Templating` (object)

        * Changed property `Name` (string)

        * Changed property `Labels` (object)

        * Changed property `Driver` (object)

            New optional properties:
            - `Name`

            * Changed property `Name` (string)

            * Changed property `Options` (object)

##### `GET` /volumes


###### Parameters:

Changed: `filters` in `query`
> JSON encoded value of the filters (a map[string][]string) to process on the volumes list. Available filters:
>   - driver=<volume-driver-name> Matches volumes based on their driver.
>   - label=<key> or label=<key>:<value> Matches volumes based on the presence of a label alone or a label and a value.
>   - name=<volume-name> Matches all of volume name.
>   - `until=<timestamp>` List volumes created before this timestamp. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon machine’s time.
>
> Note:
>   The boolean `dangling` filter is not yet implemented for this endpoint.


###### Return Type:

Changed response : **500 Internal Server Error**
> Internal server error


* Changed content type : `application/json`

    New optional properties:
    - `message`

    * Added property `cause` (string)
        > API root cause formatted for automated parsing


    * Added property `response` (integer)
        > HTTP response code


    * Changed property `message` (string)
        > human error message, formatted for a human to read


Changed response : **200 OK**
> Volume List


* Changed content type : `application/json`

    * Changed property `Warnings` (array)
        > Warnings that occurred when fetching the list of volumes.


    * Changed property `Volumes` (array)
        > List of volumes


        Changed items (object):
            > Volume volume


        * Changed property `CreatedAt` (string -> string)
            > Date/Time the volume was created.


        * Changed property `Status` (object)
            > Low-level details about the volume, provided by the volume driver.
            > Details are returned as a map with key/value pairs:
            > `{"key":"value","key2":"value2"}`.
            >
            > The `Status` field is optional, and is omitted if the volume driver
            > does not support this feature.


        * Changed property `Scope` (string)
            > The level at which the volume exists. Either `global` for cluster-wide,
            > or `local` for machine level.


            Removed enum values:

            * `local`
            * `global`
        * Changed property `Options` (object)
            > The driver specific options used when creating the volume.


        * Changed property `UsageData` (object)
            > UsageData Usage details about the volume. This information is used by the
            > `GET /system/df` endpoint, and omitted in other endpoints.


            * Changed property `Size` (integer)
                > Amount of disk space used by the volume (in bytes). This information
                > is only available for volumes created with the `"local"` volume
                > driver. For volumes created with other volume drivers, this field
                > is set to `-1` ("not available")


            * Changed property `RefCount` (integer)
                > The number of containers referencing this volume. This field
                > is set to `-1` if the reference-count is not available.


        * Changed property `ClusterVolume` (object)
            > ClusterVolume contains options and information specific to, and only present
            > on, Swarm CSI cluster volumes.


            * Changed property `ID` (string)
                > ID is the Swarm ID of the volume. Because cluster volumes are Swarm
                > objects, they have an ID, unlike non-cluster volumes, which only have a
                > Name. This ID can be used to refer to the cluster volume.


            * Changed property `CreatedAt` (string -> string)

            * Changed property `UpdatedAt` (string -> string)

            * Changed property `PublishStatus` (array)
                > PublishStatus contains the status of the volume as it pertains to its
                > publishing on Nodes.


                Changed items (object):
                    > PublishStatus represents the status of the volume as published to an
                    > individual node


                * Changed property `NodeID` (string)
                    > NodeID is the ID of the swarm node this Volume is published to.


                * Changed property `State` (string)
                    > PublishState represents the state of a Volume as it pertains to its
                    > use on a particular Node.


                    Removed enum values:

                    * `pending-publish`
                    * `published`
                    * `pending-node-unpublish`
                    * `pending-controller-unpublish`
                * Changed property `PublishContext` (object)
                    > PublishContext is the PublishContext returned by the CSI plugin when
                    > a volume is published.


            * Changed property `Version` (object)

            * Changed property `Spec` (object)

                * Added property `AccessibilityRequirements` (object)
                    > TopologyRequirement expresses the user's requirements for a volume's
                    > accessible topology.


                * Added property `Availability` (string)

                * Added property `CapacityRange` (object)
                    > CapacityRange describes the minimum and maximum capacity a volume should be
                    > created with


                * Added property `Secrets` (array)
                    > Secrets defines Swarm Secrets that are passed to the CSI storage plugin
                    > when operating on this volume.


                * Changed property `Group` (string)
                    > Group defines the volume group of this volume. Volumes belonging to the
                    > same group can be referred to by group name when creating Services.
                    > Referring to a volume by group instructs swarm to treat volumes in that
                    > group interchangeably for the purpose of scheduling. Volumes with an
                    > empty string for a group technically all belong to the same, emptystring
                    > group.


                * Changed property `AccessMode` (object)

                    * Added property `BlockVolume` (object)
                        > Intentionally empty.


                    * Deleted property `Secrets` (array)
                        > Swarm Secrets that are passed to the CSI storage plugin when
                        > operating on this volume.


                    * Deleted property `AccessibilityRequirements` (object)
                        > Requirements for the accessible topology of the volume. These
                        > fields are optional. For an in-depth description of what these
                        > fields mean, see the CSI specification.


                    * Deleted property `CapacityRange` (object)
                        > The desired capacity that the volume should be created with. If
                        > empty, the plugin will decide the capacity.


                    * Deleted property `Availability` (string)
                        > The availability of the volume for use in tasks.
                        > - `active` The volume is fully available for scheduling on the cluster
                        > - `pause` No new workloads should use the volume, but existing workloads are not stopped.
                        > - `drain` All workloads using this volume should be stopped and rescheduled, and no new ones should be started.


                    * Changed property `Scope` (string)
                        > Scope defines the Scope of a Cluster Volume. This is how many nodes a
                        > Volume can be accessed simultaneously on.


                        Removed enum values:

                        * `single`
                        * `multi`
                    * Changed property `Sharing` (string)
                        > SharingMode defines the Sharing of a Cluster Volume. This is how Tasks using a
                        > Volume at the same time can use it.


                        Removed enum values:

                        * `none`
                        * `readonly`
                        * `onewriter`
                        * `all`
                    * Changed property `MountVolume` (object)
                        > TypeMount contains options for using a volume as a Mount-type
                        > volume.


                        * Added property `FsType` (string)
                            > FsType specifies the filesystem type for the mount volume. Optional.


                        * Added property `MountFlags` (array)
                            > MountFlags defines flags to pass when mounting the volume. Optional.


            * Changed property `Info` (object)
                > Info contains information about the Volume as a whole as provided by
                > the CSI storage plugin.


                * Changed property `CapacityBytes` (integer)
                    > CapacityBytes is the capacity of the volume in bytes. A value of 0
                    > indicates that the capacity is unknown.


                * Changed property `VolumeContext` (object)
                    > VolumeContext is the context originating from the CSI storage plugin
                    > when the Volume is created.


                * Changed property `VolumeID` (string)
                    > VolumeID is the ID of the Volume as seen by the CSI storage plugin. This
                    > is distinct from the Volume's Swarm ID, which is the ID used by all of
                    > the Docker Engine to refer to the Volume. If this field is blank, then
                    > the Volume has not been successfully created yet.


                * Changed property `AccessibleTopology` (array)
                    > AccessibleTopolgoy is the topology this volume is actually accessible
                    > from.


                    Changed items (object):
                        > This description is taken verbatim from the CSI Spec:
                        >
                        > A topological domain is a sub-division of a cluster, like "region",
                        > "zone", "rack", etc.
                        > A topological segment is a specific instance of a topological domain,
                        > like "zone3", "rack3", etc.
                        > For example {"com.company/zone": "Z1", "com.company/rack": "R3"}
                        > Valid keys have two segments: an OPTIONAL prefix and name, separated
                        > by a slash (/), for example: "com.company.example/zone".
                        > The key name segment is REQUIRED. The prefix is OPTIONAL.
                        > The key name MUST be 63 characters or less, begin and end with an
                        > alphanumeric character ([a-z0-9A-Z]), and contain only dashes (-),
                        > underscores (_), dots (.), or alphanumerics in between, for example
                        > "zone".
                        > The key prefix MUST be 63 characters or less, begin and end with a
                        > lower-case alphanumeric character ([a-z0-9]), contain only
                        > dashes (-), dots (.), or lower-case alphanumerics in between, and
                        > follow domain name notation format
                        > (https://tools.ietf.org/html/rfc1035#section-2.3.1).
                        > The key prefix SHOULD include the plugin's host company name and/or
                        > the plugin name, to minimize the possibility of collisions with keys
                        > from other plugins.
                        > If a key prefix is specified, it MUST be identical across all
                        > topology keys returned by the SP (across all RPCs).
                        > Keys MUST be case-insensitive. Meaning the keys "Zone" and "zone"
                        > MUST not both exist.
                        > Each value (topological segment) MUST contain 1 or more strings.
                        > Each string MUST be 63 characters or less and begin and end with an
                        > alphanumeric character with '-', '_', '.', or alphanumerics in
                        > between.


                    * Added property `Segments` (object)

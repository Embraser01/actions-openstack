# GitHub Action for OpenStack

The GitHub Actions for [OpenStack](https://openstack.org/) and wraps the
[OpenStackClient](https://www.openstack.org/software/releases/rocky/components/openstackclient)
to enable common OpenStack commands. This is a thin wrapper around the `openstack` utility.

## Usage

An example workflow to list object containers on an OpenStack platform:

```
workflow "Run openstack command" {
  on = "push"
  resolves = "OS List objects container"
}

action "OpenStack Authenticate" {
  uses = "Embraser01/actions-openstack/cli@master"
  secrets = ["OPENSTACK_AUTH"]
}

action "OS List objects container" {
  needs = ["OpenStack Authenticate"]
  uses = "Embraser01/actions-openstack/cli@master"
  args = "object list"
}
```

For more information bout the authentication steep, [see `auth`](/auth)

## License

The Dockerfile and associated scripts and documentation in this project are released under the
[MIT License](LICENSE).

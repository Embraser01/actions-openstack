# GitHub Action for OpenStack

The GitHub Actions for [OpenStack](https://openstack.org/) and wraps the
[OpenStackClient](https://www.openstack.org/software/releases/rocky/components/openstackclient)
to authenticate future commands.

## Usage

An example workflow to authenticate to an OpenStack platform:

```
workflow "Run openstack login" {
  on = "push"
  resolves = "Load credentials"
}

action "Load credentials" {
  uses = "Embraser01/actions-openstack/auth@master"
  secrets = ["OPENSTACK_AUTH"]
}
```

## Secrets

- `OPENSTACK_AUTH` **Required** Base64 encoded `clouds.yml` file
  - For information abouth this file see the
    [OpenStack docs](https://docs.openstack.org/python-openstackclient/pike/cli/man/openstack.html#config-files)
  - For information about using Secrets in Actions please see the
    [Actions docs](https://developer.github.com/actions/creating-workflows/storing-secrets/).

Example on encoding from a terminal : base64 ~/.config/openstack/clouds.yml

## License

The Dockerfile and associated scripts and documentation in this project are released under the
[MIT License](LICENSE).

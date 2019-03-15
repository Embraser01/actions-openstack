FROM debian:9.5-slim

LABEL "com.github.actions.name"="OpenStack - Auth"
LABEL "com.github.actions.description"="Create a cloud.yml file for future authentificate actions"
LABEL "com.github.actions.icon"="folder-plus"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/Embraser01/actions-openstack"
LABEL "homepage"="https://github.com/Embraser01/actions-openstack"
LABEL "maintainer"="Marc-Antoine Fernandes <embraser@gmail.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

FROM python:3.6-stretch

LABEL "com.github.actions.name"="OpenStack - CLI"
LABEL "com.github.actions.description"="Use the openstackclient to use any of the available commands"
LABEL "com.github.actions.icon"="folder-plus"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/Embraser01/actions-openstack"
LABEL "homepage"="https://github.com/Embraser01/actions-openstack"
LABEL "maintainer"="Marc-Antoine Fernandes <embraser@gmail.com>"

RUN pip install python-openstackclient

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

#!/bin/bash

GITHUB_CLI=$(which gh)

# AUTHENTICATE GITHUB
$GITHUB_CLI auth login


# Function
check_template() {
    $GITHUB_CLI repo list |grep $1
}


# Create Repo

[ "$TEMPLATE" == "nttdata-template-empty-private" ] && $GITHUB_CLI repo create --template Digital-Architecture/${TEMPLATE} Digital-Architecture/${DEPART}-${APP} --private
[ "$TEMPLATE" == "nttdata-template-empty-public" ] && $GITHUB_CLI repo create --template Digital-Architecture/${TEMPLATE} Digital-Architecture/${DEPART}-${APP} --public

[ "$TEMPLATE" == "nttdata-template-docs-hugo" ] && $GITHUB_CLI repo create --template Digital-Architecture/${TEMPLATE} Digital-Architecture/${DEPART}${APP} --public

[ "$TEMPLATE" == "nttdata-template-modules-terraform" ] || !check_template Digital-Architecture/terraform-modules-aws-${MODULO} && $GITHUB_CLI repo create --template Digital-Architecture/${TEMPLATE} Digital-Architecture/terraform-modules-aws-${MODULO} --public --team Digital-Architecture/SRE

[ "$TEMPLATE" == "nttdata-template-infra-terraform" ] || !check_template Digital-Architecture/${PROJETO}-${APP}-infra-terraform && $GITHUB_CLI repo create --template Digital-Architecture/${TEMPLATE} Digital-Architecture/${PROJETO}-${APP}-infra-terraform --public --team Digital-Architecture/SRE






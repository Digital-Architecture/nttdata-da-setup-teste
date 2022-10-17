#!/bin/bash

GITHUB_CLI=$(which gh)

# AUTHENTICATE GITHUB
$GITHUB_CLI auth login


# Create Repo

[ "$TEMPLATE" == "nttdata-template-empty-private" ] && $GITHUB_CLI repo create --template Digital-Architecture/${TEMPLATE} Digital-Architecture/${DEPART}-${APP} --private
[ "$TEMPLATE" == "nttdata-template-empty-public" ] && $GITHUB_CLI repo create --template Digital-Architecture/${TEMPLATE} Digital-Architecture/${DEPART}-${APP} --public

[ "$TEMPLATE" == "nttdata-template-docs-hugo" ] && $GITHUB_CLI repo create --template Digital-Architecture/${TEMPLATE} Digital-Architecture/${DEPART}${APP} --public

[ "$TEMPLATE" == "nttdata-template-modules-terraform" ] && $GITHUB_CLI repo create --template Digital-Architecture/${TEMPLATE} Digital-Architecture/terraform-modules-aws-${MODULO} --public --include-all-branches

[ "$TEMPLATE" == "nttdata-template-infra-terraform" ] && $GITHUB_CLI repo create --template Digital-Architecture/${TEMPLATE} Digital-Architecture/${PROJETO}-${APP}-infra-terraform --public --include-all-branches






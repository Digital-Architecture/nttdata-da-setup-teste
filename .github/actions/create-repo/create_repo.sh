#!/bin/bash

GITHUB_CLI=$(which gh)


# AUTHENTICATE GITHUB
$GITHUB_CLI auth login

if [ "$TEMPLATE" == "nttdata-template-empty-private" ] 
then
    $GITHUB_CLI repo create --template Digital-Architecture/${TEMPLATE} Digital-Architecture/${DEPART}-${APP} --private

elif [ "$TEMPLATE" == "nttdata-template-empty-private" ]
then
    $GITHUB_CLI repo create --template Digital-Architecture/${TEMPLATE} Digital-Architecture/${DEPART}-${APP} --public

elif [ "$TEMPLATE" == "nttdata-template-docs-hugo" ]
then
    $GITHUB_CLI repo create --template Digital-Architecture/${TEMPLATE} Digital-Architecture/${DEPART}${APP} --public

elif [ "$TEMPLATE" == "nttdata-template-modules-terraform" ]
then
    $GITHUB_CLI repo create --template Digital-Architecture/${TEMPLATE} Digital-Architecture/terraform-modules-aws-${SERVICE} --public

else
    echo "Template invalid!!!!"

fi





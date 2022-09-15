#!/bin/bash

GITHUB_CLI=$(which gh)


# AUTHENTICATE GITHUB
$GITHUB_CLI auth login

if [ "$TEMPLATE" == "nttdata-template-empty-private" ] 
then
    $GITHUB_CLI repo create --template Digital-Architecture/${TEMPLATE} Digital-Architecture/${DEPART}-${APP} --private
else
   $GITHUB_CLI repo create --template Digital-Architecture/${TEMPLATE} Digital-Architecture/${DEPART}-${APP} --public
fi





#!/bin/bash -x
# Assumes you have run examples/set-creds
# This is just an example to show how you could update an application
# It would be nice if we didn't need to create an app from an existing blueprint, but have a blank app started


NEWAPPNAME=test011 #what you want to name your application
UPDATEFILE=input1.json #How you want to modify the application

#Create new app from blueprint with just 1 VM in it
./examples/app-create -b "baseline-bp" -n ${NEWAPPNAME}

#Get the ID of the running Applcation
ID=`./examples/app-get-id ${NEWAPPNAME}`

#Take json file from architecture we like and update it with application ID
cat input1.json | sed "s/APPID/${ID}/" > input2.json
sed -i "s/APPNAME/${NEWAPPNAME}/" input2.json

#Update the application using the new json file
./examples/app-update -f input2.json

#Create blueprint from running app


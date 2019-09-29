#!/bin/bash
REPOSITORIES=(Pacco.APIGateway Pacco.Services.Availability Pacco.Services.Customers Pacco.Services.Deliveries Pacco.Services.Identity Pacco.Services.Operations Pacco.Services.Orders Pacco.Services.OrderMaker Pacco.Services.Parcels Pacco.Services.Pricing Pacco.Services.Vehicles)

for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Cloning the repository: $REPOSITORY
	 echo ========================================================
	 REPO_URL=https://github.com/devmentors/$REPOSITORY.git
	 git clone $REPO_URL
	 cd $REPOSITORY && cd ..
done
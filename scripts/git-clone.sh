#!/bin/bash
REPOSITORIES=(Pacco.APIGateway Pacco.APIGateway.Ocelot Pacco.Services.Availability Pacco.Services.Customers Pacco.Services.Deliveries Pacco.Services.Identity Pacco.Services.Operations Pacco.Services.Orders Pacco.Services.OrderMaker Pacco.Services.Parcels Pacco.Services.Pricing Pacco.Services.Vehicles)

for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Cloning the repository: $REPOSITORY
	 echo ========================================================
	 REPO_URL=https://github.com/devmentors/$REPOSITORY.git
	 cd ../../
	 git clone $REPO_URL
	 cd -
done
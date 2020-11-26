#!/bin/bash
REPOSITORIES=(Pacco.APIGateway Pacco.APIGateway.Ocelot Pacco.Services.Availability Pacco.Services.Customers Pacco.Services.Deliveries Pacco.Services.Identity Pacco.Services.Operations Pacco.Services.Orders Pacco.Services.OrderMaker Pacco.Services.Parcels Pacco.Services.Pricing Pacco.Services.Vehicles)

 for REPOSITORY in ${REPOSITORIES[*]}
 do
	  echo ========================================================
	  echo Updating the repository: $REPOSITORY
	  echo ========================================================
	  cd ../../$REPOSITORY
	  git checkout develop && git pull && git checkout master && git pull
	  cd -
 done

 echo ========================================================
 echo "stoping all containers..."
 echo ========================================================

 container_ids=($(docker ps -a -q))
 echo container_ids
 for container_id in ${container_ids[@]}
 do
	 echo stopping container with Id: ${container_id}
	 eval docker stop ${container_id}
	 echo stopped
	 echo ========================================================
 done

echo ========================================================
echo "building & starting all services..."
echo ========================================================
cd ../compose
eval "docker network create pacco-network || true"
eval "docker-compose -f services-local.yml up --build --remove-orphans"
echo "DONE"
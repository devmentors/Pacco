#!/bin/bash
REPOSITORIES=(Pacco Pacco.APIGateway Pacco.Services.Complaints Pacco.Services.Couriers Pacco.Services.Customers Pacco.Services.Deliveries Pacco.Services.Identity Pacco.Services.Operations Pacco.Services.Orders Pacco.Services.Parcels)

echo ${REPOSITORIES[@]} | sed -E -e 's/[[:blank:]]+/\n/g' | xargs -I {} -n 1 -P 0 sh -c 'printf "========================================================\nUpdating repository: {}\n========================================================\n"; git -C {} checkout develop; git -C {} pull; git -C {} checkout master; git -C {} pull;git -C {} checkout develop;'

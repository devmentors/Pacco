
$repos = ("Pacco.APIGateway", "Pacco.Services.Availability", "Pacco.Services.Customers", "Pacco.Services.Deliveries", "Pacco.Services.Identity", "Pacco.Services.Operations", "Pacco.Services.Orders", "Pacco.Services.OrderMaker", "Pacco.Services.Parcels", "Pacco.Services.Pricing", "Pacco.Services.Vehicles")

foreach($repo in $repos) {
    Write-Host "=========================================="
    Write-Host "Cloning the Repository: "$repo
    Write-Host "=========================================="
    $repo_url = "https://github.com/devmentors/"+$repo+".git"
    git clone $repo_url
}

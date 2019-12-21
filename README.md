![Pacco](https://raw.githubusercontent.com/devmentors/Pacco/master/assets/pacco_logo.png)

**What is Pacco?**

Pacco is an open source project using microservices architecture written in .NET Core 3.1 and the domain tackles the exclusive parcels delivery which revolves around the general concept of limited resources availability. 

The overal solution uses the cloud agnostic tools and most of them can be found under [cncf.io](https://cncf.io). To easily plug into the complex infrastructure, [Convey](https://convey-stack.github.io) is being used. The whole project is created and maintained by [devmentors.io](https://devmentors.io).

Depending on the particular microservice complexity, either the clean architecture + DDD approach (as presented below) is used or another style that is the best fit.

![Clean architecture](https://raw.githubusercontent.com/devmentors/Pacco/master/assets/clean_architecture.png)


**Which repositories should I clone?**
----------------

Please clone the following repositories and put them into the same working directory:

- [Pacco](https://github.com/devmentors/Pacco)
- [Pacco.APIGateway](https://github.com/devmentors/Pacco.APIGateway)
- [Pacco.Services.Availability](https://github.com/devmentors/Pacco.Services.Availability)
- [Pacco.Services.Customers](https://github.com/devmentors/Pacco.Services.Customers)
- [Pacco.Services.Deliveries](https://github.com/devmentors/Pacco.Services.Deliveries)
- [Pacco.Services.Identity](https://github.com/devmentors/Pacco.Services.Identity)
- [Pacco.Services.Operations](https://github.com/devmentors/Pacco.Services.Operations)
- [Pacco.Services.OrderMaker](https://github.com/devmentors/Pacco.Services.OrderMaker)
- [Pacco.Services.Orders](https://github.com/devmentors/Pacco.Services.Orders)
- [Pacco.Services.Parcels](https://github.com/devmentors/Pacco.Services.Parcels)
- [Pacco.Services.Pricing](https://github.com/devmentors/Pacco.Services.Pricing)
- [Pacco.Services.Vehicles](https://github.com/devmentors/Pacco.Services.Vehicles)

The above repositories can be also cloned via [git-clone.sh](https://github.com/devmentors/Pacco/blob/master/scripts/git-clone.sh) script and updated via [git-pull.sh](https://github.com/devmentors/Pacco/blob/master/scripts/git-pull.sh) script. Simply, copy the scripts to the directory next to the `Pacco` on your local drive, and execute them using shell. Inside `Pacco`, you will also find [Pacco.sln](https://github.com/devmentors/Pacco/blob/master/Pacco.sln)  that aggregates all the microservices under a single solution, in order to make it easier to work with during the local development.

**How to start the solution?**

Open `Pacco/compose` directory and execute `docker-compose -f infrastructure.yml build` and then `docker-compose -f infrastructure.yml up -d` - it will start the required infrastructure in the background. Then, you can start the services independently of each other via `dotnet run` command in each microservice repository or run them all at once using Docker, by executing `docker-compose -f services-local.yml build` and `docker-compose -f services-local.yml up` commands in the console.
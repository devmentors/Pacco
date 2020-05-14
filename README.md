![Pacco](https://raw.githubusercontent.com/devmentors/Pacco/master/assets/pacco_logo.png)

**What is Pacco?**
----------------

Pacco is an open source project using microservices architecture written in .NET Core 3.1. The domain tackles an exclusive parcels delivery which revolves around the general concept of limited resources availability. Pacco does use an event-driven approach in order to asynchronously integrate between the microservices.

Find out more about distributed systems patterns and practices in **[Microservices .NET online course](https://devmentors.io/courses/microservices-net)** and check out our **[article](https://devmentors.io/blog/hello-world-microservices-pacco)** about starting Pacco microservices and infrastructure.

The solution is maintained by [devmentors.io](https://devmentors.io).

![Pacco overview](https://raw.githubusercontent.com/devmentors/Pacco/master/assets/pacco_overview.png)

----------------

The overall solution makes use of the cloud agnostic tools and most of them can be found under [cncf.io](https://cncf.io). To easily plug into the complex infrastructure, [Convey](https://convey-stack.github.io) is being used.

![Infrastructure](https://raw.githubusercontent.com/devmentors/Pacco/master/assets/infrastructure.png)

----------------

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
----------------

Open `Pacco/compose` directory and execute:

```
docker-compose -f infrastructure.yml up -d
```

It will start the required infrastructure in the background. Then, you can start the services independently of each other via `dotnet run` or `./scripts/start.sh` command in each microservice repository or run them all at once using Docker:

```
docker-compose -f services-local.yml up
```

**What HTTP requests can be sent to the API?**
----------------

You can find the list of all HTTP requests in [Pacco-sample-scenario.rest](https://github.com/devmentors/Pacco.APIGateway/blob/master/Pacco-sample-scenario.rest) file placed in the root folder of [Pacco.APIGateway](https://github.com/devmentors/Pacco.APIGateway) repository. 
This file is compatible with [REST Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client) plugin for [Visual Studio Code](https://code.visualstudio.com). 

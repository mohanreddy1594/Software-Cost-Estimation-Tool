# Software Requirement Tool
The software Cost Estimation tool allows to create non-functional requirements, functional requirements and system constraint. It utilizes quality attribute scenarios(templates) to create non-functional requirements. For the functional requirements, it utilizing the template which was originally proposed by Carnegie Mellon Software Engineering Institute (SEI). User can link non-functional requirement with functional requirement and also functional to functional requirement, which creates a tree structure of requirements with hierarchy. System constraint consists of software, hardware and network requirement for that project. 

The tool provides feature to list the project, search project, print the whole project, calculate effort,size and cost of the project which uses Function point analysis.


# Development

## Start with [Docker](https://docs.docker.com/get-docker/)

```
docker-compose up
```

Shutdown

```
docker-compose down
```

When started up the app will available at http://localhost:8080/softwaretool
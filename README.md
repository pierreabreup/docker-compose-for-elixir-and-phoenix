# What is it?

This project is an elixir and phoenix docker environment. The following tools are installed: 
* nodejs 
* mix 
* hex 
* phx_new

# Why should you use it?

First of all, it is helpful to run phoenix and installs dependencies avoiding conflicts with other phoenix projects. The second reason, it makes your local machine clean

# How to use?

After you clone the project, follow the steps:
- open a terminal session in your terminal tool (Iterm, Terminal, Putty)
- go to folder where you've clone the project (Ex.: ```cd docker-compose-for-elixir-and-phoenix```)
- type the command: ```make run```

This command will run the container and open a session inside the container. If all goes well, you will be in the path ```/usr/src/app```.   In this path, you can run commands like ```mix phx.new myfirst_phonenix_project```

##### IMPORTANT!
when you run ```make run```on the first time, the docker image will be created. In the next times, docker compose will use the image.

# FAQ

=> **I already have a exixir/phoenix project. How can I use this docker container?**
**A:** Pretty simple. Clone this docker container project and copy the files Dockerfile, docker-compose, entrypoint, Makefile, and paste them inside your react root path.  After that, type the command: ```make run```.

=> **Why nodejs is installed?**
It is worth noting nodejs was installed because of phoenix use webpack for asset management (https://hexdocs.pm/phoenix/up_and_running.html). If you intend to not use assets in your project, feel free to edit Dockerfile and remove ```nodejs \``` and type ```make run```. Reminder yourself to type ```make destroy``` and ```make run``` whether you already created docker image previously

=> **I'm having problems to up the container or run rails project. What can I do ?**
**A:** create a [github issue](https://github.com/pierreabreup/docker-compose-for-react/issues) . I promise will answer as soon as possible

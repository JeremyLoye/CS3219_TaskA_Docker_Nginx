# CS3219_TaskA_Docker_Nginx

**Instructions on how to run the Docker container:**

<u>Pre-Requisite</u>: Have Docker Desktop or Docker Toolbox installed on your machine. If you are using Docker Toolbox, it should be running.

1. Fork and clone the Github Repository onto your machine.

2. Using your terminal, navigate to the folder where the repository was cloned to.

3. Run command `docker build . -t {image-name}`, replacing `{image-name}` with a name of your choosing (e.g. `docker build . -t reverseproxy`). This builds the docker image based on the Dockerfile in the directory.

4. With the docker image built, you are ready to run it. Run the command `docker run -it -rm -d -p {port-number}:80 --name {container-name} {image-name}`. `{port-number}` corresponds to the port you wish to run the web server on, `{container-name}` corresponds to the name of the container the image will be run in and `{image-name}` corresponds to the name of the image you have just created (e.g. `docker run -it -rm -d -p 8080:80 --name {container-name} reverseproxy`).

5. Open up a web browser and go to `localhost:{port-number}`(e.g. `localhost:8080`) to access the web page. 

<u>Troubleshooting</u>: If you are using Docker Toolbox, the container may be hosted on the docker local machine IP instead. Use `docker-machine ip default` to get your local machine IP and use it in place of `localhost`. 
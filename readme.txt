What is Docker?

    Docker is like a magic container box that can pack your entire application along with everything it needs to run — like code, libraries, and tools — and ship it anywhere without breaking.


Why Use Docker?

    Without Docker
        It works on my machine
        Manual setup
        Dependency issues
        Time-consuming

    With Docker
        It works EVERYWHERE
        Automatic setup
        No issues
        Fast 


Real-Life Example:
    If you've ever watched a movie on Netflix, the movie plays the same on your phone, laptop, or TV.
    That's exactly what Docker does for applications — it makes sure they run the same way on any system.


Virtual Machine:
    | Hardware | Hypervisor | Guest OS | App |

Docker Container:
    | Hardware | Host OS | Docker | App |


Simple Rule:

    👉 If you need to run multiple apps faster with less memory ➡️ Use Docker Containers
    👉 If you need different operating systems on the same machine ➡️ Use Virtual Machines


Docker Basics Commands:

    docker --version
    Check Docker version 

    docker pull <image_name>
    Download Docker image

    docker images
    List all downloaded images

    docker run <image_name>
    Run a container from image

    docker ps
    List running containers

    docker ps -a
    List all containers (Running + Stopped)

    docker stop <container_id>
    Stop running container

    docker rm <container_id>
    Delete a container

    docker rmi <image_id>
    Delete an image

    docker exec -it <container_id> bash
    Access container shell



Writing a Python Dockerfile

# Use Python Base Image
FROM python:3.9

# Copy app.py into the container
COPY app.py .

# Run the app
CMD ["python", "app.py"]



Build the image:
docker build -t my_python_app .

Run your app:
docker run my_python_app

Docker Logs:
docker logs <container_id>

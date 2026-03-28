# Task 2: Docker Installation and Application Deployment

## Objective
Install Docker, create a Dockerfile, and deploy a containerized web application on port 8000.

## Steps

### 1. Install Docker
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

### 2. Create index.html and Dockerfile
mkdir Task-2 && cd Task-2

### 3. Dockerfile
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 8000
CMD ["nginx", "-g", "daemon off;"]

### 4. Build Docker Image
sudo docker build -t myapp .

### 5. Run Container
sudo docker run -d -p 8000:80 --name myapp-container myapp

## Expected Outcome
Web application accessible at http://192.168.56.101:8000

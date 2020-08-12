# Devops_On_Kubernetes
A CI/CD pipeline deployed on aws eks using ansible

### Project Features
* Using Jenkins to implement Continuous Integration and Continuous Deployment
* Integrate Sonar with Jenkins
* Building pipelines
* Deploy Jenkins , Sonar & backend application to AWS EKS


## Step by Step guide to deploy Jenkins / Sonar  on aws eks using ansible
By the end of those steps, you should be able to deploy the tools on aws eks. Otherwise open issue.

### 1. Clone or Setup docker and jenkine pipeline to a project
* clone existing microservice project with jenkins pipeline. run in terminal `git clone https://github.com/Ahmed-Elkollaly/movie-info-service.git`

### 2. Build Dockerfile locally and push to dockerhub
* run script `./run_docker_locally` . the script build the image and run it on port 8082
* test application for url `http://localhost:8082/movies/500` . This is information about movie of id `500` in movie db website
* create repository in your account in dockerhub with name `movie-info-app`
* (optional) edit file `upload_docker.sh` to replace your account name
* (optional) run `./upload_docker.sh` to upload the project to your account in dockerhub
### 3. Before deploying to aws eks, try running pipeline on aws ec2 to avoid extra complexity and cost resulting from aws eks
### 4. Run ansible playbook and script  to download docker and  pull image for Sonarqube and jenkins image to aws ec2
### 5. Run Jenkins, Sonarqube image
### 6. Install plugins for jenkins and setup aws, github and dockerhub credentials
### 7. Open blue ocean and create pipeline for the selected project
### 8. Terminate aws ec2 instance if tools are functional
### 9. Create Kubernetes Cluster on aws eks
### 10. Deploy backend application, jenkins & sonar to aws eks using commands
### 11. Test urls of the running of pods 
### 12. Terminate the running aws ec2 only
### 13. Deploy backend application, jenkins & sonar to aws eks using ansible with k8s module

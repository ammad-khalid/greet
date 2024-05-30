Changes that I made in app to make it working:

1. I have to create a Dockerfile for containerization purpose.
2. I have created a start.py file that will start the redis and flask processes as they were not getting started one after another in Docker container so this method has been used. 
3. for deployment purpose I have used helm charts.
4. I have created docker image, stored it on ecr and then used that image in my helm chart deployment.

Steps to deploy app:

1. build the image using: docker build -t greet . (run this in folder where your Dockerfile is or just reference the Dockerfile with -f tag).
2. Then tag the image for uploading to ecr using: docker tag <image_ID> <ecr_repository_url>:<tag>
3. deploy the helm charts using: helm install <chart_name> <Directory_name>
4. To check the deployment from helm: helm list
5. To check deployments we can use: kubectl get deployements 
6. To remove the deployment: helm uninstall <chart_name>

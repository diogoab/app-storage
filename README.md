# App-Storage

## Getting Started

### Prerequisites

Kindly ensure you have the following installed on your machine:

- [ ] [Docker](https://realpython.com/installing-python/)
- [ ] [Docker-compose](https://pipenv.readthedocs.io/en/latest/#install-pipenv-today)
- [ ] [Git]()
- [ ] An IDE or Editor of your choice
- [ ] For Windows Users please search about VM Linux rsrs, 

### Running the Application

#### Part One
1. Clone the repository
```
$ git clone https://github.com/diogoab/app-storage.git
```
2. Check into the cloned repository
```
$ cd app-storage/terraform-s3
```
3. export your AWS variables
```
$ export AWS_ACCESS_KEY_ID="your-aws-access-key"
$ export AWS_SECRET_ACCESS_KEY="your-secret-key"
$ export AWS_DEFAULT_REGION="your-region"
```
4. let´s fly!:
```
$ terraform init
```
5. for security roll plan
```
$ terraform plan
```
6. Finally create your bucket
```
$ terraform apply
```
#### Part Two

1. Create a bucket with TF, navegate up folder, search app folder and update name on the `app.py` file on line 10.
```
cd ../app-storage
```
2. Run the docker!
```
docker-compose up -d
```
3. Navigate to http://localhost:5000/storage

#### Hey, is You advanced User? So:
 - Fork this repo and run the actions pipelines with configs of your [DockerHub](https://hub.docker.com/) 
 - looking here https://github.com/diogoab/app-storage/actions

#### Run the next stage
 - Look folder Kubernetes and run the deploy in [play with kubernetes platform](https://labs.play-with-k8s.com/)

 - Execute this
 ```
 kubectl create secret generic aws-secret --from-literal=AWS_ACCESS_KEY=access-key --from-literal=AWS_SECRET_KEY=secret-key --from-literal=AWS_DEFAULT_REGION=us-east-1
 ```
 
 - before
 ```
 kubectl apply -f deployment.yaml
 
 kubectl get pods
 ```

- if LB doesn't go up, run this
```
 kubectl port-forward --address 0.0.0.0 <name-your-pod> 5000:5000
```
p.s: remember to change the image name first, line 35

#### How to monitor this

- Use the stack Prometheus and Grafana with cadvisor for monitor Docker containers
[Dockprom](https://github.com/stefanprodan/dockprom)
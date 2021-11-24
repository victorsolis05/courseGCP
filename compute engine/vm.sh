#Get current project

gcloud config get-value project

# List compute engines

gcloud compute instances list

#List services

gcloud services list

#List enabled services

gcloud services list --enabled

#Lisr available services

gcloud services list --available

#Search specific service 

gcloud services list --available |  grep compute

#create compute instance VM

gcloud compute instances create myvm

#gcloud sintax

# gcloud <global flags> <service/product> <group/area> <command> <flags> <parameters>


#List machine tipes and filter

gcloud compute machine-types list --filter="NAME:f1-micro"
gcloud compute machine-types list --filter="NAME:f1-micro AND ZONE~us-west"

#Set zone
gcloud config set compute/zone us-west2-b

#CSet region

gcloud config set compute/region us-west

#Create compuyte vm on specific type

gcloud compute instances create --machine-type=f1-micro test-micro

#Connect to compute VM from gcloud 

gcloud compute ssh test2 --zone=us-east1-c

#Get Inforamtion about VM

curl -H "Metadata-Flavor:Google" metadata.google.internal/computeMetadata/v1/instance/name

ssh-keygen -t RSA
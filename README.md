export PROJECT_ID=<PROJECT_ID>

skaffold config set default-repo gcr.io/$PROJECT_ID

./create-cloud-deploy.sh

gcloud builds submit --substitutions=TAG_NAME=$(date +%y%m%d-%H%M%S),_PROJECT_ID=${PROJECT_ID}
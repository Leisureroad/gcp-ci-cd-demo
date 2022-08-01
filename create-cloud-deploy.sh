PROJECT_ID=flius-vpc-2
sed -i'' -e "s/PROJECT_ID/${PROJECT_ID}/" ./clouddeploy.yaml
gcloud beta deploy apply --file ./clouddeploy.yaml --region=us-central1 --project=${PROJECT_ID}
sed -i'' -e "s/${PROJECT_ID}/PROJECT_ID/" ./clouddeploy.yaml

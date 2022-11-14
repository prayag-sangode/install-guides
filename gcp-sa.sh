#Set variable names

gcloud iam roles list | grep "roles/editor"
gcloud projects list | grep "id"

SA_NAME="gcp-editor-sa"
DESCRIPTION="GCP Editor SA"
DISPLAY_NAME="GCP Editor SA"
PROJECT_ID="gcp-cloud-devops-368311"
ROLE_NAME="roles/editor"

echo $SA_NAME
echo $DESCRIPTION
echo $DISPLAY_NAME
echo $PROJECT_ID
echo $ROLE_NAME

#Create Editor Role Service Account

gcloud iam service-accounts list
gcloud iam service-accounts create "$SA_NAME" --description="$DESCRIPTION" --display-name="$DISPLAY_NAME"
gcloud projects add-iam-policy-binding "$PROJECT_ID" --member="serviceAccount:$SA_NAME@$PROJECT_ID.iam.gserviceaccount.com" --role="$ROLE_NAME"
gcloud iam service-accounts list
gcloud iam service-accounts keys create keys.json --iam-account="$SA_NAME@$PROJECT_ID.iam.gserviceaccount.com"
gcloud iam service-accounts keys list  --iam-account="$SA_NAME@$PROJECT_ID.iam.gserviceaccount.com"

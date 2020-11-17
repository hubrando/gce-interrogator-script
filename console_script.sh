# !/bin/bash
OUTPUT=project_info_output.txt
PROJECT_ID=msu-spartan-289723
ACCOUNT=hubrando@msu.edu	

echo "======================================================================================" > $OUTPUT
echo " :gcloud info" >> $OUTPUT
gcloud info >> $OUTPUT
echo "======================================================================================" >> $OUTPUT
echo "Project Networking Configurations" >> $OUTPUT
echo "======================================================================================" >> $OUTPUT
echo " :gcloud compute networks list" >> $OUTPUT
gcloud compute networks list --project=$PROJECT_ID >> $OUTPUT
echo "======================================================================================" >> $OUTPUT
echo "Google Compute Engine Specific Information" >> $OUTPUT
echo "======================================================================================" >> $OUTPUT
echo " :gcloud compute instances list -project=$PROJECT_ID" >> $OUTPUT
gcloud compute instances list --project=$PROJECT_ID >> $OUTPUT
echo "======================================================================================" >> $OUTPUT
echo " :gcloud compute project-info describe --project=$PROJECT_ID" >> $OUTPUT
gcloud compute project-info describe --project=$PROJECT_ID >> $OUTPUT
echo "======================================================================================" >> $OUTPUT
echo "IAM Role information" >> $OUTPUT
echo "======================================================================================" >> $OUTPUT
echo " :gcloud projects get-iam-policy $PROJECT_ID" >> $OUTPUT
gcloud projects get-iam-policy $PROJECT_ID >> $OUTPUT


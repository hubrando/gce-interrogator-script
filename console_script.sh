# !/bin/bash
OUTPUT=project_info_output.txt
PROJECT_ID=msu-spartan-289723
ACCOUNT=hubrando@msu.edu	

echo "======================================================================================" >> $OUTPUT
echo " :gcloud info" >> $OUTPUT
gcloud info >> $OUTPUT
echo "======================================================================================" >> $OUTPUT
echo "Project networking configurations" >> $OUTPUT
echo "======================================================================================" >> $OUTPUT
echo " :gcloud compute networks list" >> $OUTPUT
gcloud compute networks list >> $OUTPUT
echo "=====================================================================================" >> $OUTPUT
echo "IAM Role information" >> $OUTPUT
echo "=====================================================================================" >> $OUTPUT
echo " :gcloud projects get-iam-policy $PROJECT_ID" >> $OUTPUT
gcloud projects get-iam-policy $PROJECT_ID >> $OUTPUT


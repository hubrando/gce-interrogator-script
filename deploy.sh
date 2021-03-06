#!/bin/sh
# Copyright 2014 Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ACCOUNT=$USER@msu.edu
PROJECT=msu-spartan-289723
BUCKET=msu-spartan-gce-scripts
gcloud config set account $ACCOUNT
gcloud config set project $PROJECT
gsutil cp gee.sh gs://$BUCKET/gee.sh
# TODO(sub) auto-generate sample log and provide a flag to do skip it
gsutil cp project_info_output.txt gs://$BUCKET/project_info_output.txt
gsutil setmeta  -h "Cache-Control:public, max-age=0, no-transform" gs://$BUCKET/gee.sh gs://$BUCKET/project_info_output.txt
gsutil acl set public-read gs://$BUCKET/gee.sh gs://$BUCKET/project_info_output.txt


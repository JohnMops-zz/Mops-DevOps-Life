# Mops-DevOps-Life
DevOps Study
This are the projects I am working on as part of the DevOps life I have chosen.



###Ansible-Project###

    
1. Pre configures the host that you input
2. Install everything needed for a flask service to run
3. Copying template files for the flask app to the chosen host
3. Monitors changes in the repository and runs a job if something changed
via a Webhook




Will keep working and building this up as I go.
(Terraform script exist to spin an AWS instance, will be added later)




###ELK-Project###

1. Preconfigure the chosen host
2. Install Docker on the chosen host
1. Run Elasticsearch and Kicana containers on a chosen host
2. Run Metricbeat on a chosen host and point it to the Elasticsearch host


###New-Project###

1. Let's you choose a host 
3. Let's you choose which Role to run on the chosen host via a menue in Jenkins job
4. Run individuals roles 
5. Connects between the relevant services (e.g. Elastichsearch with Kibana and Metricbeat)
6. Universal and can be used anywhere


###appU Folder###

1. Contains a python app and a unit test
2. Jenkinsfile tests the application using the unit test locally
3. If != SUCCESSm aborts the build
4. If SUCCESS, uses part of the commit id as a tag
5. Connects to a remote host via user's input, build the image and 
pushes it to docker hub fo future useage


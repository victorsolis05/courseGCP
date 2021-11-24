
#To list buckets
gsutil list

#list files on bucket 
gsutil list gs://storage-test-16112021/

#list files on folder 

gsutil list gs://storage-test-16112021/test

# List all files on bucket
 
gs://storage-test-16112021/**

#Create a bucket

gsutil mb gs://storage-test-16112021-2

#Get labels of bucket

gsutil label get gs://storage-test-16112021

#Set label of bucket

gsutil label set bucketlabel.json gs://storage-test-16112021/

#Setting label with ch

gsutil label ch -l "programer:victor" gs://storage-test-16112021/

#Check versioning

gsutil versioning get gs://storage-test-16112021

#Enabbling versioning 
gsutil versioning set on gs://storage-test-16112021

#Copy file to bucket
gsutil cp README-cloudshell.txt gs://storage-test-16112021

#List files with versioning

gsutil ls -a gs://storage-test-16112021

#Copy files between buckets

gsutil cp gs://storage-test-16112021/** gs://storage-test-16112021-2/

#Change public access

gsutil acl ch -u AllUsers:R gs://storage-test-16112021
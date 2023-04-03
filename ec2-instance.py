import boto3
import json
def create-ec2-instance():

 try:
        print ("Creating EC2 instance")
        resource_ec2 = boto3.client("ec2")
        resource_ec2.run_instances(
            ImageId="ami-0376ec8eacdf70aae",
            MinCount=1,
            MaxCount=1,
            InstanceType="t2.micro",
            KeyName="dev1.pem"
        )
    except Exception as e:
        print(e)

def describe_ec2_instance():
    try:
        print ("Describing EC2 instance")
        resource_ec2 = boto3.client("ec2")
        print(resource_ec2.describe_instances()["Reservations"][0]["Instances"][0]["InstanceId"])
        
    except Exception as e:
        print(e)

# Convert the response to JSON
json_response = json.dumps(response, default=default, indent=4)
# Print the JSON response
print(json_response)
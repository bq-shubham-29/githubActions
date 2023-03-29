import boto3

ec2 = boto3.resource('ec2')

lt = {
    'LaunchTemplateName': 'launchTemplate',
    'Version': '$Latest'
}


def lambda_handler(event, context):
    event=event.get('action')
    if event == 'queued':
      instances = ec2.create_instances(
          LaunchTemplate=lt,
          MinCount=1,
          MaxCount=1
      )
#    elif event == 'completed':
       

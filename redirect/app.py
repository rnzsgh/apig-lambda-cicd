import json

def handler(event, context):
    #ip = event['requestContext']['identity']['sourceIp']
    #agent = event['requestContext']['identity']['userAgent']
    #print('ip: {} - agent: {}'.format(ip, agent))

    print('This is an example of logging')

    print(event)

    print(context)

    return {
        'headers': { 'location': 'https://aws.amazon.com' },
        'statusCode': 302,
    }

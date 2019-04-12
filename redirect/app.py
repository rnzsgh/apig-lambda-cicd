import json

def handler(event, context):
    #ip = event['requestContext']['identity']['sourceIp']
    #agent = event['requestContext']['identity']['userAgent']
    #print('ip: {} - agent: {}'.format(ip, agent))

    return {
        'headers': { 'location': 'https://aws.amazon.com' },
    }

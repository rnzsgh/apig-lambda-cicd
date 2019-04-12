import json

def handler(event, context):
    #ip = event['requestContext']['identity']['sourceIp']
    #agent = event['requestContext']['identity']['userAgent']
    #print('ip: {} - agent: {}'.format(ip, agent))

    return {
        'isBase64Encoded': False,
        'headers': {},
        'statusCode': 302,
        'body': json.dumps({
            'location': 'https://aws.amazon.com',
        }),
    }

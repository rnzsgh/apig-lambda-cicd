import json

def handler(event, context):
    ip = event['headers']['X-Forwarded-For']
    agent = event['headers']['User-Agent']
    print('ip: {} - agent: {}'.format(ip, agent))

    print('This is an example of logging')

    return {
        'headers': { 'location': 'https://aws.amazon.com' },
        'statusCode': 302,
    }

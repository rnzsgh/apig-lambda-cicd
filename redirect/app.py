import json

def handler(event, context):
    return {
        'isBase64Encoded': False,
        'headers': {},
        'statusCode': 200,
        'body': json.dumps({
            'location': 'https://aws.amazon.com',
        }),
    }

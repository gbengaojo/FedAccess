---
tags: AWS, Certifications
title: Interacting With AWS
created: '2023-05-22T14:34:43.803Z'
modified: '2023-05-22T17:07:57.135Z'
---

# Interacting With AWS

> Every action that you make in AWS is an API call that is authenticated and authorized. In AWS, you can make API calls to services and resources through the AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs.

# AWS Management Console
..

# AWS CLI
**Example**
CLI command: <code>aws s3api list-buckets</code>

API Response:
<code>
{
    "Owner": {
        "DisplayName": "tech-essentials", 
        "ID": "d9881f40b83adh2896eb276f44ffch53677faec805422c83dfk60cc335a7da92"
    }, 
    "Buckets": [
        {
            "CreationDate": "2023-01-10T15:50:20.000Z", 
            "Name": "aws-tech-essentials"
        }, 
        {
            "CreationDate": "2023-01-10T16:04:15.000Z", 
            "Name": "aws-tech-essentials-employee-directory-app"
        } 
    ]
}
</code>

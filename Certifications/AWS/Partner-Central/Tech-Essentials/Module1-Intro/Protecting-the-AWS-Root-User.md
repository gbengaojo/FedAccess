---
tags: AWS, Certifications
title: Protecting the AWS Root User
created: 2023-05-23 13:00 CST
modified: 2023-05-23 13:00 CST
---

# Protecting the AWS Root User

## AWS Root User Credentials
* Two (2) sets are provided
  * 1. email & password
  * 2. access keys that allow programmatic API access

Access Keys consist of two parts:
  * **Access key ID:** for example, A2lAl5EXAMPLE
  * **Secret access key:** for example, wJalrFE/KbEKxE

> Similar to a user name and password combination, you need both the access key ID and secret access key to authenticate your requests through the AWS CLI or AWS API. Access keys should be managed with the same security as an email address and password.

* Don't create Access Keys for the Root Account unless absolutely necessary. Delete them otherwise if they exist.
  * Name > Security Credentials > Access Keys > Actions > Delete

## AWS Root User Best Practices
  * Strong password
  * MFA
  * Don't share password or keys (if they exists)
  * Disable or Delete access keys if not needed
  * Create an IAM user for everyday tasks

### Supported MFA devices
  * Virtual MFA (Google Authenticator, etc)
  * Hardware TOTP token (Key fob; Display Card)
  * FIDO security keys
    > FIDO-certified hardware security keys are provided by third-party providers such as Yubico. You can plug your FIDO security key into a USB port on your computer and enable it using the instructions that follow.

---
tags: AWS, Certifications
title: Interacting With AWS
created: '2023-05-22 14:05 CST'
modified: '2023-05-23 08:00 CST'
---

# Security and the AWS Shared Responsibility Model

![Shared Responsibility Model (Security)](assets/images/shared-responsibility-model.png)

## AWS Responsibility
* AWS secures the physical infrastructure of the cloud, i.e., buildings, data centers, physical servers, connections between locations
  * Usual physical security controls, e.g., security guards, biometric access, disaster recovery, etc.
* It also manages
  * Additional hardware (e.g., routers, switches, etc)
  * Host Operating Systems
  * Virtualization layers

> The level of responsibility that AWS has depends on the service. AWS classifies services into two categories. The following table provides information about each, including the AWS responsibility.

![AWS Responsibility Depending on Service](assets/images/aws-service-responsibility.png)

In other words, AWS is responsible for everything *up to the virtualization layer*. Then security becomes the customer's responsibility.


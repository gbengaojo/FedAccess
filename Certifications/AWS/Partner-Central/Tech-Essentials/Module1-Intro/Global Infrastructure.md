---
title: Global Infrastructure
created: '2023-05-19T13:55:59.853Z'
modified: '2023-05-19T14:06:28.712Z'
---

# Global Infrastructure

## Regions >> Availability Zones
#### Regions, e.g.
- Virginia
  - us-east-1
- Oregon
  - us-west-2
- Tokyo
  - ap-northeast-1

## Choosing the Right AWS Region
> AWS Regions are independent from one another. Without explicit customer consent and authorization, data is not replicated from one Region to another.

#### 4 Considerations
1. Latency
  - Select a Region close to user-base if application is sensitive to latency
    - IoT
    - Gaming
    - Telephony
    - Synchronous applications in general
2. Pricing
  - Prices vary from one location to another
3. Service Availability
  - Some services are not available in all Regions
4. Data Compliance
  - E.g., GDPR

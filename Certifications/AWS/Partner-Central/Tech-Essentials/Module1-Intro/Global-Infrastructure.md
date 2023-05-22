---
title: Global Infrastructure
created: '2023-05-19T13:55:59.853Z'
modified: '2023-05-19T14:06:28.712Z'
---

# Global Infrastructure

## Regions >> Availability Zones

### Regions, e.g.
- Virginia
  - us-east-1
- Oregon
  - us-west-2
- Tokyo
  - ap-northeast-1

## Choosing the Right AWS Region
> AWS Regions are independent from one another. Without explicit customer consent and authorization, data is not replicated from one Region to another.

**Four (4) Considerations**
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

## Availability Zones
Clusters of Availability Zones exist in each Region. Appending <code>a, b, c, etc...</code> to the AZ code name infers the cluster.

> Inside every Region is a cluster of Availability Zones. An Availability Zone consists of one or more data centers with redundant power, networking, and connectivity. These data centers operate in discrete facilities in undisclosed locations. They are connected using redundant high-speed and low-latency links.

## Scope of AWS Resources
* Services are delivered at either the Global, Region, or Availability Zone level, depending on the service.
* Services that request a specification for an Availability Zone are scoped at that level, otherwise generally at the Regional level
  * Availability Zone scoped services require manual planning for durability and availability
  * Regional scoped services generally do this automatically

## Maintaining Resiliency
> A well-known best practice for cloud architecture is to use Region-scoped, managed services. These services come with availability and resiliency built in.
* Otherwise, make sure to replicate application workloads over multiple Availability Zones, at least two (2)

## Edge Locations
> Edge locations are global locations where content is cached.
* Currently over 400+ Edge Locations
* Amazon CloudFront manages Edge locations
  * Requests are routed to the Edge Location w/ the lowest latency

## Resources
[Global Infrastructure](https://aws.amazon.com/about-aws/global-infrastructure/) Website

[AWS Global Infrastructure Documentation](https://docs.aws.amazon.com/whitepapers/latest/aws-overview/global-infrastructure.html) Whitepaper

[AWS Regions and Availability Zones](https://aws.amazon.com/about-aws/global-infrastructure/regions_az/) Website

[AWS Service Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html) Reference Guide

[AWS Regional Services](https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/) Website

[Amazon CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html) Developer Guide


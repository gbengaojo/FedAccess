---
Title: Notes for AWS Cert ->  Solutions Architect Associate, C03
Date: Aug 6, 2023 1:11pm CST
Link: [AWS Course](https://www.youtube.com/watch?v=keoNi7MmAUY)
Link: [Sample Questions Not sure how accurate](https://www.youtube.com/watch?v=vfMz2zAsIak)
Link: [Sample Questions Not sure of accuracy; Checked in VirusTotal and ScamAdvisor](https://www.examtopics.com/exams/amazon/aws-certified-solutions-architect-associate-saa-c03/view/)
---

# Concepts
+ **Service Control Policy (SCP)** ->
+ Cross-account Role ->
  + External ID ->
+ Fargate
  + as it relates to containerization
+ Read replicas v. Elasticache for sub-mililsecond responses
+ Kineses Data Analytics
+ Difference between
  + NAT Instance
  + NAT Gateway
  + Internet Gateway
  + Virtual Private Gateway

DNS
---
### A Record
- The Most Fundamental Record
- Maps "A" Names to IP Addresses
- IPv6 uses "AAAA" names
### CNAME Record
- Record that maps a domain name to another domain name
- Can map to another CNAME record or an A record
- Effectively redirects a request from one domain to another
### NS Records
- Identifies the DNS Servers that are repsonsible for your DNS Zone
- Authoritative NS > Propagate an Organizations DNS information to DNS Servers across the Internet
### MX Record
- Specifies whtich Mail Servers can accept mail from your domain
- Necesary to be able to receive email

Routing Policies
----------------
### Simple Routing
- Default
- Maps a domain name to a single location
### Failover Routing
- Route traffic to Main Server
- On Failure, send to a Backup Server
### Geoloaction Routing
- Routes to the nearest Geographic Location based on requester's source IP address
- Region Based
### Geoproximity Routing
- Used when DNS servers are setup in multiple AZs
- Routes to the nearest AZ
- AZ Based
### Latency Based Routing
- "True" best latency
- Route53 determines lowest latency DNS server
### Multivalue Answer
- Route to anywhere
- Not very specific but does allow for load sharing
### Weighted Routing
- E.g.: 75% traffic to Server A
        25% traffic to Server B
- Good for application testing

Load Balancers
--------------
- Could have several compute instances (machines), but if they're not load balanced, essentially one machine is computing and the others are backups
- Load balancing allowns multiple compute instances to compute at the same time
- Increase performance by Scaling Out instead of just Scaling Up
- Increase Availability by removing Single Points of Failure
- Use Health Checks to increase Availability
### Network Load Balancers
- Operate at L4 (Transmit Layer) of the OSI Model (TCP/UDP)
### Application Load Balancers
- Operate at L7 (Application Layer) of the OSI Model (HTTP/HTTPS)
- Have a lot more intelligenc in them
### (3) Types available
- Elastic LB: **Application**
- Elastic LB: **Network**
- Classic LB: Legacy -> either Network or Application
### AWS LB Implementation - Elastic Load Balancer
- Distributes to multiple targets, e.g., EC2, Web Servers, etc.
- Auto-scaling
- Use an IP Address
  - When auto-scaling occurs, multiple IP addresses will be used
  - Plan the subnets accordingly or the system will can run out of address space
- Can balance across AZs
- Support Health Checks
  - Removes unhealthy servers out of rotations
- Can terminate SSL Connections
  - Also reduces load (e.g., abandoned sessions)
### Network Load Balancer
- Fastest (can handle millions of request per second)
- Sit at the perimiter of the VPC
- Route traffic based on Destination Port (E.g, Port 80)
- Excelent w/ rapidly changing traffic patterns
- Stateful Connections (keeps track of what's going out, then back in and vice/versa, I suppose)
- Connection (Host <=> Server) is maintained until the Session has ended
- *Sticky Sessions* -> "Remembers" the user source and destination IPs
  - Aids in good performance
  - AuthN & AuthZ good for the Session
### Application Load Balancer
- Route based on several variables
  - URL Path
  - Headers
  - HTTP Method (GET, PUSH, etc)
  - Can route based on source address
- PEQ: Ideal for balancing requests to Microservices and Container-Based applications
- Can Load Balance between AWS VPC and On-Premise Data Center
- Stateful Connections
### Legacy (Classic) Load Balancer
- Still available, but not recommended - Elastic should be used
- Available in both Network and Application forms
- Legacy: Can work with both EC2-Classic and VPCs
- Auto-scaling Capabilities
- Can support Single or Multiple AZs, just like Modern ALB/ELB
- Can also terminate SSL Connections
- Provides Logs to analyze traffic flows
- Can be used w/ CloudTrail for Auditing

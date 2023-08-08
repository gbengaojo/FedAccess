---
Title: Notes for AWS Cert ->  Solutions Architect Associate, C03
Date: Aug 6, 2023 1:11pm CST
Link: [AWS Course](https://www.youtube.com/watch?v=keoNi7MmAUY)
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

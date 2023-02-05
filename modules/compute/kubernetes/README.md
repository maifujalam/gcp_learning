Private GKE Cluster:-
1. Controle plane network cidr has to be of unused subnet cidr with block size of 28.Because it does internal vpc peering with selected subnet to GKE internally used 
   master subnet.
2. If the selected subnet is not overlaping with any other subnet of the network but overlap with any other cidr of already peered vpc the it wont work either.
   Example-A:- vpc-a (cidr-x) <-> vpc-b (cidr-y) <--->(internal peering) master-vpc (cidr-x) then it wont work.
   Example-B: vpc-a (cidr-x) <-> vpc-b (cidr-y) <--->(internal peering) master-vpc (cidr-z) then it work.
3. Can create a cluster with any default node pool (1 instance) and can delete that node pool and attach another node pool.
4. NEG(Network Endpoint Groups): Load balance directly to pod endpoints in 1 hop instead of 2 hops.
5. NEg implement Pod readiness gates to determine health of the pods before load balancing.
6. Services will be annotated automatically with cloud.google.com/neg: '{"ingress": true}'
7. NEG enables by deafult if this conditions are true :- a. services created in gke >=1.17.6 
   b. usig vpc native cluster. 
   c. not using shared vpc .
   d. not using GKE network policy.
8. NEG can be disabled by enabling in annotation of service.
9. NEG cannot be disabled with internal http load balancing.
10. LB:- create service LB then it will create TCP LB.
11. Create ingress resource leads to http load balancer creation.
12. You cannot access node port service with private GKE Cluster.
13. You can create nginx with cluster ip to access that service through external http load balancer.

types of GKE cluster:-
1. Public cluster:- All node get public external ip.
Have option to choose 1. route based cluster:- uses Coogle cloud routes. (to uses it you must turn of vpc native)
                      2. vpc native: It uses alias ip ranges (default from gke 1.21.0).

2. Private cluster: All nodes get only private ip.Master node is accessable using external ip.It only uses vpc native based routing.
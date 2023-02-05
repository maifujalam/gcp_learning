GKE-Autopilot Mode 

1. GKE provision and manage underlying infrastructure,i.e node,node pool. 
2. Only pay for the resources (cpu,memory,storage) utilizated by pods.
3. Maximul 32 pods per node.
4. Default cpu and memory are:- for pod 500mCPU,2 gb ram.For daemonsets:- 50mCPU,100MiB ram.

Autopilot limitations:-
1. No priviledge pods are allowed to run.
2. 
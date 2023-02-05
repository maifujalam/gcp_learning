1. Google Cloud always allows communication between a VM instance and its corresponding metadata server at 169.254.169.254
2. Lower priority number get higher priority.Default 1000.
3. Default:- allow all egress (lowest priority i.e 65535)and block all ingress(lowest priority i.e 65535).
4. Default network is prepopulated with below rules:-
   1. deafult allow internal instance ingress 
   2. default allow icmpfrom anywhere
   3. allow ssh on 22 from anywhere
   4. allow rdp on 3389 from anywhere 
5. Default block rules:- 
   1. Ingress packets to UDP 68 (DHCP-ipv4)
   2. Ingress packets to UDP 546 (DHCP-ipv6)
   3. Egress packets to port TCP 25 .nO ISSUE WITH INTERNAL IP.If you want you can but requires some conditions. 
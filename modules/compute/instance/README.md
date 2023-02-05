Check startup script: sudo journalctl -xefu google-startup-scripts -f
1. What are the free tiere vm?
   e2-micro ( us region) 2 vcp- 1 gb memory.
2. gcloud compute instances list --zones=us-central1-a,us-central1-c
   1. What are preemtable instances?
       VM whic are created at much lower cost almost 60-90% discount (compare to standadr vm cost).
       preemtable instances uses googles excess compute engine capacity.So the avaiability of this vm varies.
       Only use if your app support instance premeption.(stop at any point of time)
       Spot vm are the latest version of premeptable vm.
       It can only run for upto 24 hrs. 
       Example use cases can be:- batch processing,k8s or openshift cluster.where you use stateless applications.

3. what are deletion protection?
    its a checkbox when enabled ,then vm cannot be deleted.

4. What are spot instances?
   Advanced version of preemtable instances.It run longer then 24 until availability of google spot compute resources.

5. Spot instance limitations:-
   Compute engine might preempt spot instance any time.
   Spot vm are finite amount of resources so they might not available all the time.
   It cannot be live migrate or moved back to standard vm.
   It does not comes with SLA.99.5 or 99.99. 
   free tier credit does not apply to spot instance.

6. How the preemptable happens?
   STOP signet is sent ot vm: Then it becomes TERMINATED and datas can be accessed.But data (attached ssd) can be recovered.
   DELETE signal is sent to vm: Then vm is deleted.

7. 
   

# SRE Exam

```
                                   %%%%%%%%%%%%%%%%%%%%%%%%                                        
                             %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                                  
                         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%,%%%%%%%%%%%%%                          ((  
                     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                    (((   
                   %%%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%               ((((     
                 %%%%%%%%%%%%%  %%%%  .%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%         (((((       
               %%%%%%%%%%%%% %%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    (((((((         
             %%%%%%%%%%%%%% %%%%%%%.  %%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%(((((((((           
            %%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%((((((((((,             
           %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  %%%%%%%%%%%%%%%%#(((((((((((((%               
          %%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%% %%%%%%%%%(((((((((((#%(((%%%%               
         %%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%% %(((((((((((((%%(((%%%%%%%%%              
        %%%%%%......%%%%,....% %%%%........%%%%%%%%((((*,/ ((( ((%%%%.(((...%%%%%%%%%%             
        %%%%%%%       %%%%  %%% %%%%(       ((((((((    (((%   %%%%(((       %%%%%%%%%             
        %%%%%%%        %%%  %%%% %%%  (      ((((((       %%%%%(((%%%  %      %%%%%%%%             
        %%%%%%%  %/      %  %((((((  (((      %%%%%%       (((  %%%%%  %%      %%%%%%%             
        %%%%%%%  %%%        (((#%%(            %%%%%%%%(((       %%%            %%%%%%             
        %%%%%%%  ((((.      %%%%%%  % %%%       %%%.(((%%%%     %%%  %%%%%%      %%%%%             
        %%%(((%%%%%%%%%%%%%%%%%%%%%%%%% %%%%%%%%((( %%%     %%%%%%%%%%%%%%%%%%%%%%%%%%             
      (( %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%(((%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%              
   (      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%(((  %%%%%%%%%%%%%%%%%%%%%%  %%%% %%% %%%%%%               
           %%%%%%%%%%%%%%%%%%%%%%%%%%(((%%%%%   %%%%%%%%%%%%%%%% %%%.%%%%%%%%% %%%%                
            %%%%%%%%%%*%%%%%%%%%%(((%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%                 
             %%%%%%%%%%%%%%%%%(((%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%/%%%%%%%%%%%%%                  
               %%%%%%%%%%%%((#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%(     %%%%%%%%%%%%%                    
                 %%%%%%%((%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                      
                   %%((%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                        
                   (  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                          
                (,       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                              
               (              %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                                 
                                   %%%%%%%%%%%%%%%%%%%%%%%%                                       
```

## Welcome

Welcome - we're glad you're here and are excited to work with you!  This relatively simple test is meant to demonstrate a basic understanding of a few key concepts that we use on a daily basis, namely:

* [Git](https://git-scm.com)
* [Terraform](https://terraform.io)
* [Kubernetes](https://kubernetes.io)
* [Kustomize](https://kustomize.io)
* Documentation

## Tasks

As part of this demonstration, please do the following:

### Git
Fork this repo into your own.  Ideally it will be hosted on [gitlab.com](https://gitlab.com), but any hosted git SCM will work.  Please provide us with the URL of your SCM.

### Terraform
Write [terraform](https://terraform.io) that does the following:
* Create a [GKE](https://github.com/terraform-google-modules/terraform-google-kubernetes-engine) cluster

### Kubernetes / Kustomize
Write a kustomization that deploys [podinfo](https://github.com/stefanprodan/podinfo) to a cluster.  Consider the basic components that are needed for all deployments and be sure to include those.  Bonus points if the ingress is an `Ingress` manifest.  As a backup, you could explain how to port forward to your service in order to effectively have a local ingress vector.  Either approach is fine.


### Documentation

Please document your approach to each of these tasks; it doesn't have to be super elaborate, but a couple of statements for each tasks showing generally what you did, why you did it, and how to use it would be incredibly useful.  For example, how would you apply the kustomization that you just created to the cluster?

## Conclusion

From an expectation perspective, in general we think that you should have this completed in approximately 1 to 2 hours.

Good luck and thank you for taking the time to work on this!
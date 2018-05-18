#!/bin/zsh

kubectl -n ns-jenkins exec -it  $(kubectl get pods -n ns-jenkins -l role=backend-worker -o yaml | grep "name: dpl-backend-worker-79-jenkins-qa*" | head -n 1 | cut -d':' -f2 | awk '{print $1}') -- sh -c "apt-get install vim; vim /home/blazemeter/vol/www/a.blazemeter.com/src/blazemeter/Migrations/000017_OverrideExecution.php; bash"

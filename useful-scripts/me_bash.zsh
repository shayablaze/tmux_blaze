#!/bin/zsh

#kubectl exec -i $(kubectl get pods -l role=bza -o jsonpath="{.items[0].metadata.name}") -- sh -c "cd /home/blazemeter/vol/www/a.blazemeter.com/; touch bla.txt; bash"
kubectl exec -i dpl-bza-126-ajzye01-shayablaze-7cb77f6bc4-7l4d8 bash

@echo off

kubectl delete -f ingress\

kubectl delete -f apps\api-gateway\
kubectl delete -f apps\payment\
kubectl delete -f apps\order\
kubectl delete -f apps\user\
kubectl delete -f apps\auth\

kubectl delete -f infrastructure\postgres\payment\
kubectl delete -f infrastructure\postgres\order\
kubectl delete -f infrastructure\postgres\user\
kubectl delete -f infrastructure\postgres\auth\

kubectl delete -f infrastructure\redis\
kubectl delete -f infrastructure\kafka\

echo Undeployment completed.
pause
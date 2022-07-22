namespace=shopper-db

kubectl delete svc postgres-service -n $namespace
kubectl delete pvc postgres-pvc -n $namespace
kubectl delete pv postgres-pv
kubectl delete configmap postgres-config-map -n $namespace
kubectl delete deploy postgres -n $namespace
kubectl delete namespace $namespace

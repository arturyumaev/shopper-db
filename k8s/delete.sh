kubectl delete pvc postgres-pvc -n shopper-db
kubectl delete pv postgres-pv
kubectl delete configmap postgres-config-map -n shopper-db
kubectl delete namespace shopper-db

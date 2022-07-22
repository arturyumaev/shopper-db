env_file="./env.local"
namespace=shopper-db
config_name=postgres-config-map

kubectl apply -f ./namespace.yaml

# Creating configmap from file
kubectl create configmap $config_name --from-env-file=$env_file -n $namespace
kubectl label configmap $config_name app=postgres -n $namespace

kubectl apply -f ./persistentVolume.yaml
kubectl apply -f ./persistentVolumeClaim.yaml
kubectl apply -f ./deployment.yaml
kubectl apply -f ./service.yaml

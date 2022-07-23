env_file="../.env"
namespace=shopper-db
config=postgres-config-map

if [ $1 = 'up' ]
then
  kubectl apply -f ./namespace.yaml

  kubectl create configmap $config --from-env-file=$env_file -n $namespace
  kubectl label configmap $config app=postgres -n $namespace

  kubectl apply -f ./persistentVolume.yaml
  kubectl apply -f ./persistentVolumeClaim.yaml
  kubectl apply -f ./deployment.yaml
  kubectl apply -f ./service.yaml
elif [ $1 == 'down' ]
then
  kubectl delete namespace $namespace
fi

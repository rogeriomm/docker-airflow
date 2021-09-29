helm repo add bitnami https://charts.bitnami.com/bitnami
kubectl create namespace airlfow
helm install --namespace airflow my-release bitnami/airflow --values values.yaml

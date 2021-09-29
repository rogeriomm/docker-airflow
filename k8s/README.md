

# Airflow install 
   * https://artifacthub.io/packages/helm/bitnami/airflow
      * https://github.com/bitnami/charts/tree/master/bitnami/airflow

```commandline
helm repo add bitnami https://charts.bitnami.com/bitnami
kubectl create ns airflow
kubectl create -n airflow configmap requirements --from-file=requirements.txt
helm install --namespace airflow my-release bitnami/airflow --values values.yaml
```

```commandline
helm upgrade --namespace airflow my-release bitnami/airflow --values values.yaml
```

  * http://airflow.local/: Airflow local web 


   * _/etc/hosts_ 
```commandline
echo $(minikube ip) airflow.local | sudo bash -c "cat >> /etc/hosts"
```

# Links
   * https://www.youtube.com/watch?v=sQzp9HD8Yto: Apache Airflow 2.0 no Kubernetes - Construindo e Orquestrando um Data Pipeline [ELT]
   * https://towardsdatascience.com/setting-up-data-pipelines-using-apache-airflow-on-kubernetes-4506baea3ce0: Setting Up Data Pipelines Using Apache Airflow on Kubernetes


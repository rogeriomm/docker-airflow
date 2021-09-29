helm uninstall --namespace airflow my-release
kubectl delete pvc --namespace airflow data-my-release-postgresql-0
kubectl delete pvc --namespace airflow redis-data-my-release-redis-master-0

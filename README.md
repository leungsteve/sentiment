# Sentiment

This is an OTEL instrumented Flask application that returns a sentiment score. YAML files are available for running as a deployment in K8.

Build the docker image with:
```
Docker build -t myrepo/sentiment-splkotel:0.1 .
```

If necessary, login to dockerhub:
```
docker login
```
    
Push your image to dockerhub:
```
docker push myrepo/sentiment-splkotel:0.1
```

In your K8 cluster apply the deployment and service
```
kubectl apply -f sentiment.deployment.yaml
kubectl apply -f sentiment.service.yaml
```

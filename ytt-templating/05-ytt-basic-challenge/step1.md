### Scenario - Basic Challenge
You have been tasked with generating a manifest from a template file and a given values file. This manifest must contain a single Service and Deployment. The Service and Deployment should both be in the correct Namespace and should be named `<app name>-service` and `<app name>-deployment`, respectively. The Service's `spec.selector` must be changed to a meaningful value (probably the Service's name) and the Deployment's `spec.selector.matchLabels.app` must mirror this value as well. Finally, the `test_suite.star` should check your `data.values` and assert that no value is set to "basic".

Good Luck!

### Acceptance Criteria
Run `ytt -f .` to successfully generate a manifest.

```
ytt -f .
```{{execute}}

Your manifest should look like this: (the order of the resources may be different)

```yaml
apiVersion: v1
kind: Service
metadata:
  name: platform-service
  namespace: apps
spec:
  type: ClusterIP
  ports:
  - port: 443
    protocol: TCP
    name: https
    targetPort: https
  selector:
    app: platform-service
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: platform-deployment
  namespace: apps
spec:
  selector:
    matchLabels:
      app: platform-service
  replicas: 1
  template:
    spec:
      containers:
      - name: registry
        image: registry_image:latest
        ports:
        - containerPort: 8443
          name: https
```

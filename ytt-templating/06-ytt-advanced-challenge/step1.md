### Scenario
You have been tasked with generating a manifest from a template file and a given values file. This manifest must contain a single Namespace, ServiceAccount, Role, and RoleBinding. The manifest should also be able to iterate over a list of application objects, as defined in your values file, to generate a Service and Deployment for each application.

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
  name: basic-app
  namespace: apps
spec:
  type: ClusterIP
  ports:
  - port: 8443
    protocol: TCP
    name: https
    targetPort: https
  selector:
    app: basic-app
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: basic-app
  namespace: apps
spec:
  selector:
    matchLabels:
      app: basic-app
  replicas: 3
  template:
    spec:
      containers:
      - name: basic-app
        image: registry_image:latest
        ports:
        - containerPort: 8443
          name: https
---
apiVersion: v1
kind: Namespace
metadata:
  name: apps
---
apiVersion: v1
kind: ServiceAccount
metadata:
  name: apps-sa
  namespace: apps
---
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  name: apps-role
  namespace: apps
rules:
- apiGroups:
  - '*'
  resources:
  - '*'
  verbs:
  - get
  - list
  - watch
  - create
  - delete
---
apiVersion: rbac.authorization.k8s.io/v1
kind: RoleBinding
metadata:
  name: apps-role-binding
  namespace: apps
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: Role
  name: apps-role
subjects:
- kind: ServiceAccount
  name: apps-sa
```
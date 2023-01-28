apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: ingress
annotations:
  kubernetes.io/ingress.class: alb
  alb.ingress.kubernetes.io/scheme: internet-facing
  alb.ingress.kubernetes.io/subnets: ${public_subnet_0}, ${public_subnet_1}
spec:
  rules:
  - host: ${host_url}
    http:
      paths:
      - pathType: Prefix
        path: "/foo"
        backend:
          service:
            name: service-foo
            port:
              number: 80


### About

This project aims to learn about reviewing, observing, and managing the operational workflow in a cloud-based IT infrastructure. Manual or automated management techniques confirm the availability and performance of websites, servers, applications, and other cloud infrastructure. This continuous evaluation of resource levels, server response times, and speed predict possible vulnerability to future issues before they arise.

### Components

**Terraform**: It generates an executable plan and executes this plan to create, incrementally change, and continuously manage the defined components

**Amazon CloudWatch**: It collects monitoring and operational data in the form of logs, metrics, and events

**Prometheus**: an open-source monitoring solution that delivers metrics and logs similar to CloudWatch

**Grafana**: Grafana is a useful tool used to visualize different kinds of raw static or time series data in form of dashboards with a high amount of customization.

### Usage

1. Make sure you have terraform installed. Make changes about your deployment resources in main.tf by changing the region, and instance id.
2. Initialize the app by running `terraform init`.
3. You can then create a plan with `terraform plan`.
4. Run `terraform apply` to apply the plan and deploy it on the EC2 instance.
5. If you want to destroy the instance and recreate a new one: run `terraform destroy` to destroy the existing one and then `terraform apply`.

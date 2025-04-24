# Simphony-Technical-Assessment
Prueba tecnica Julian Morantes

---
## 📁 Estructura de Carpetas

```text
📦Proyecto
├── 📁 Infra                   # Infraestructura como código con Terraform
│   ├── main.tf                # Archivo principal
│   ├── variables.tf           # Variables globales
│   ├── outputs.tf             # Salidas de interés
│   ├── terraform.tfvars       # Variables de ocnfiguracion incial default
│   └── 📁 modules
│       ├── 📁 resource_group        # Módulo de Construccion de Grupo de recursos
│       ├── 📁 service_plan          # Módulo de Construccion de recurso Azure Service plan
│       ├── 📁 app_service           # Módulo de Constriccion de App Service container
│       ├── 📁 container_registry    # Módulo contruccion de ACR
│       ├── 📁 storage_account       # Módulo contruccion de Azure Storage Acount
│       └── 📁 application_insights  # Módulo de configuracion para Aplication Insights
│       
├── 📁 Pipeline
│   ├── azure-pipeline.yaml   #Archivo de despliegue yaml que ejecuta los stages necesarios para crear la infraestructura y desplegar las aplicaciones.   
│   └── 📁 templates  #Archivos template que implementa procesos especificos para los pipelines
│       ├── app-templates.yml
│       ├── img-docker-templates.yml
│       ├── destroy-infra-templates.yml
│       └── infra-templates.yml
├── answers.md
└── README.md

```

---
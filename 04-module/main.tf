module "null_resource" {
    source="./null-resource-module"
}

module "resource-count"{

    source="./resource-count"
    input=module.null_resources
}
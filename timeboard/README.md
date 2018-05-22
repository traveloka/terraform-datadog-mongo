terraform-datadog-timeboard-mongo
=================

Terraform module to create Datadog Timeboard for Mongo



Usage
-----

```hcl
module "timeboard_mongo_beical-mongod" {
  source         = "github.com/traveloka/terraform-datadog-mongo//timeboard"
  product_domain = "${var.product_domain}"
  cluster        = "${var.cluster}"
}
```

Terraform Version
-----------------

This module was created using Terraform 0.11.7. 
So to be more safe, Terraform version 0.11.7 or newer is required to use this module.

Authors
-------

* [Karsten Ari Agathon](https://github.com/karstenaa)

License
-------

Apache 2 Licensed. See LICENSE for full details.

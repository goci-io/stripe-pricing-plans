ARCHITECTURE ?= $(shell ./architecture.sh)
ARCHITECTURE_PATH ?= $(subst -,_,$(ARCHITECTURE))

init:
	mkdir -p ~/.terraform.d/plugins/$(ARCHITECTURE_PATH)
	curl -L https://github.com/franckverrot/terraform-provider-stripe/releases/download/1.3.0/terraform-provider-stripe-$(ARCHITECTURE) -o ~/.terraform.d/plugins/$(ARCHITECTURE_PATH)/terraform-provider-stripe_v1.3.0_x4
	chmod 755 ~/.terraform.d/plugins/$(ARCHITECTURE_PATH)/*
	terraform init

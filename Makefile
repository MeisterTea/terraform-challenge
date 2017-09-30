IP = $(shell terraform output ip)

init:
	@terraform init

build:
	@terraform plan
	@terraform apply

clean:
	@terraform destroy

show:
	@terraform show

ip:
	@echo $(IP)

cli:
	@ssh -i keys/id_rsa.pem ubuntu@$(IP)

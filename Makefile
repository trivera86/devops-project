

build:
	cd ./packer && packer build ami.json

deploy:
	cd ./terraform && terraform apply

destroy:
	cd ./terraform && terraform destroy -force

all: build deploy

.PHONY : clean

clean:
	unset AMI_ARTIFACT

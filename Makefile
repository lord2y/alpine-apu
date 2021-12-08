DOCKER := podman
FLAGS  := -ti --privileged --rm
NAME   := builder
WD     := /root/aports/scripts
PROFILE := apu
IMAGE  := builder:latest

iso:
	$(DOCKER) run $(FLAGS) --name $(NAME) -v ${PWD}:/transport -w $(WD) $(IMAGE) sh mkimage.sh --tag hostapd --outdir /transport --arch  x86_64 --repository http://dl-cdn.alpinelinux.org/alpine/edge/main --repository http://dl-cdn.alpinelinux.org/alpine/latest-stable/community --profile $(PROFILE)

build:
	$(DOCKER) build -t $(IMAGE) .

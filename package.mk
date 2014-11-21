RELEASABLE=true
APP_NAME:=gen_smtp
DEPS:=eiconv

UPSTREAM_GIT:=https://github.com/gotthardp/gen_smtp.git
UPSTREAM_REVISION:=8f7ba01172e679e8b4262334cefc3451b4c36777
RETAIN_ORIGINAL_VERSION:=true

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/gen_smtp.app.src
DO_NOT_GENERATE_APP_FILE=true

define package_rules

$(CLONE_DIR)/src/$(APP_NAME).app.src: $(CLONE_DIR)/.done
	sed -i 's/git/"0.4.0"/' $(CLONE_DIR)/src/$(APP_NAME).app.src

endef

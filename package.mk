RELEASABLE=true
APP_NAME:=gen_smtp
DEPS:=eiconv

UPSTREAM_GIT:=https://github.com/Vagabond/gen_smtp.git
UPSTREAM_REVISION:=8f7ba01172e679e8b4262334cefc3451b4c36777
RETAIN_ORIGINAL_VERSION:=true

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/gen_smtp.app.src
DO_NOT_GENERATE_APP_FILE=true

# this is an auto-generated file
EBIN_BEAMS+=$(EBIN_DIR)/smtp_rfc822_parse.beam

define package_rules
%.erl : %.yrl
	$(ERLC) -o $$(@D) $$<
endef

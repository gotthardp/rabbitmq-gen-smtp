RELEASABLE=true
APP_NAME:=gen_smtp

UPSTREAM_GIT:=https://github.com/gotthardp/gen_smtp.git
UPSTREAM_REVISION:=19b33d179b20eefb35fbbc1dd3435f94dc794dd5
RETAIN_ORIGINAL_VERSION:=true

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/gen_smtp.app.src
DO_NOT_GENERATE_APP_FILE=true

# this is an auto-generated file
EBIN_BEAMS+=$(EBIN_DIR)/smtp_rfc822_parse.beam

define package_rules
%.erl : %.yrl
	$(ERLC) -o $$(@D) $$<
endef

RELEASABLE=true
APP_NAME:=gen_smtp
DEPS:=eiconv

UPSTREAM_GIT:=https://github.com/gotthardp/gen_smtp.git
UPSTREAM_REVISION:=01017bd2f10475ecadb4e0ee2db38cf642d25a37
RETAIN_ORIGINAL_VERSION:=true

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/gen_smtp.app.src
DO_NOT_GENERATE_APP_FILE=true

# this is an auto-generated file
EBIN_BEAMS+=$(EBIN_DIR)/smtp_rfc822_parse.beam

define package_rules
%.erl : %.yrl
	$(ERLC) -o $$(@D) $$<
endef

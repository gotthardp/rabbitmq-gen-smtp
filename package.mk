RELEASABLE=true
APP_NAME:=gen_smtp

UPSTREAM_GIT:=https://github.com/gotthardp/gen_smtp.git
UPSTREAM_REVISION:=a62c02edae8cd951ef9ad48ac1808880f8978a76
RETAIN_ORIGINAL_VERSION:=true

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/gen_smtp.app.src
DO_NOT_GENERATE_APP_FILE=true

# this is an auto-generated file
EBIN_BEAMS+=$(EBIN_DIR)/smtp_rfc822_parse.beam

define package_rules
%.erl : %.yrl
	$(ERLC) -o $$(@D) $$<
endef

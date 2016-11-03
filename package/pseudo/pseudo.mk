################################################################################
#
# pseudo
#
################################################################################

PSEUDO_VERSION = 7abc9396731149df5eaf43c84fed4f3053b64de6
PSEUDO_SITE = https://git.yoctoproject.org/git/pseudo
PSEUDO_SITE_METHOD = git

# No "or later" clause.
PSEUDO_LICENSE = LGPLv2.1
PSEUDO_LICENSE_FILES = COPYING

HOST_PSEUDO_DEPENDENCIES = host-sqlite

# configure script is not generated by autoconf, so passing --libdir
# is necessary, even if the infrastructure passes --prefix already.
HOST_PSEUDO_CONF_OPTS = \
	--libdir=$(HOST_DIR)/usr/lib \
	--with-sqlite=$(HOST_DIR)/usr

$(eval $(host-autotools-package))
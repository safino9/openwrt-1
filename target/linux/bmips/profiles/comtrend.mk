#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/AR5381u
  NAME:=Comtrend AR-5381u
  PACKAGES:=
endef
define Profile/AR5381u/Description
  Package set optimized for AR-5381u.
endef
$(eval $(call Profile,AR5381u))

define Profile/VR3025u
  NAME:=Comtrend VR-3025u
  PACKAGES:=
endef
define Profile/VR3025u/Description
  Package set optimized for VR-3025u.
endef
$(eval $(call Profile,VR3025u))

define Profile/VR3025un
  NAME:=Comtrend VR-3025un
  PACKAGES:=
endef
define Profile/VR3025un/Description
  Package set optimized for VR-3025un.
endef
$(eval $(call Profile,VR3025un))

define Profile/VR3032u
  NAME:=Comtrend VR-3032u
  PACKAGES:=
endef
define Profile/VR3032u/Description
  Package set optimized for VR-3032u.
endef
$(eval $(call Profile,VR3032u))

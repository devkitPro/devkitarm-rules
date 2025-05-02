_MAJOR	:= 1
_MINOR	:= 5
_PATCH	:= 0

FILES	:=	3ds_rules  base_rules  base_tools  ds_rules  gba_rules  gp32_rules

all:
	$(error use dist or install targets)

install:
	@mkdir -p $(DESTDIR)/opt/devkitpro/devkitARM
	@cp -v $(FILES) $(DESTDIR)/opt/devkitpro/devkitARM

dist:
	@tar -cJf devkitarm-rules-$(_MAJOR).$(_MINOR).$(_PATCH).tar.xz $(FILES) Makefile

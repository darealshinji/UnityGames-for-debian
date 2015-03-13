export LANG=C
export LANGUAGE=C
export LC_ALL=C


define verifysha256
    sha256_2=$$(sha256sum $(1) | head -c64) ;                      \
    if [ $$sha256_2 != $(2) ] ; then                               \
        echo "$(1):" ;                                             \
        echo "SHA256 checksum is $$sha256_2 but should be $(2)." ; \
        echo "Delete '$(1)' and try it again." ;                   \
        exit 1 ;                                                   \
    else                                                           \
        echo "$(1): checksum ok." ;                                \
    fi
endef


define download
    test -f $(1) || wget -O $(1) '$(2)'
endef


alldeps = debhelper u2deb wget $(deps)




all: predepends download prepare build


predepends:
ifeq ($(DEPS),0)
	@ echo "dependency checks skipped"
else
	@ echo ""
	@ echo "checking dependencies:"
	@ $(foreach DEP, $(alldeps),                                                                 \
	echo $(DEP);                                                                                 \
	if [ $$(dpkg-query -W -f='$${Status}' $(DEP) 2>/dev/null | grep -c "ok installed") -eq 0 ] ; \
	then                                                                                         \
	    echo "You need to install the package '$(DEP)'" ;                                        \
	    sudo -k apt-get -q install $(DEP) ;                                                      \
	fi ;)
	@ echo ""
endif


build:
	mkdir -p "$$HOME/buildresult"
	u2deb build --output="$$HOME/buildresult"


clean:
	u2deb clean
	rm -rf $(cleanfiles)


distclean: clean
	rm -rf $(distcleanfiles)


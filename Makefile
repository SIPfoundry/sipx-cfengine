MODULE = cfengine-3.3.8

all: rpm

rpm-dir:
	@rm -rf `pwd`/RPMBUILD; \
	mkdir -p `pwd`/RPMBUILD/{DIST,BUILD,SOURCES,RPMS,SRPMS,SPECS}

rpm: rpm-dir 
	rpmbuild -ta --define "%_topdir `pwd`/RPMBUILD" `pwd`/${MODULE}.tar.gz







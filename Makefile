lint:
	@code=0 ; \
	for f in `find . -name "*.yaml"` ; do \
		errors="`yamllint $$f 2>&1`" ; \
		if [ $$? -ne 0 ] ; then \
			echo "yaml syntax error in $$f:" ; \
			echo "$$errors" ; \
			code=1 ; \
		fi ; \
	done ; \
	exit $$code

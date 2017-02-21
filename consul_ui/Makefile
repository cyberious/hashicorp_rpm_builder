NAME=consul
PACKAGE_NAME=consul_ui

.PHONY: package
package:
	rm -rf $(NAME)*.zip
	rm -rf $(NAME)*.rpm
	wget https://releases.hashicorp.com/$(NAME)/$(VERSION)/$(NAME)_$(VERSION)_web_ui.zip

	fpm -s zip -t rpm --rpm-dist el6 -n $(PACKAGE_NAME) -v $(VERSION) -d "consul == $(VERSION)" \
		--prefix /opt/consul/ui/ $(NAME)_$(VERSION)_web_ui.zip
		
	fpm -s zip -t rpm --rpm-dist el7 -n $(PACKAGE_NAME) -v $(VERSION) -d "consul == $(VERSION)" \
		--prefix /opt/consul/ui/ $(NAME)_$(VERSION)_web_ui.zip

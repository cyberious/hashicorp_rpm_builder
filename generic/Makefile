.PHONY: package
package:
	rm -rf $(NAME)*.zip
	rm -rf $(NAME)*.rpm
	wget https://releases.hashicorp.com/$(NAME)/$(VERSION)/$(NAME)_$(VERSION)_linux_amd64.zip
	fpm -s zip -t rpm  --rpm-dist el6 -n $(NAME) -v $(VERSION) --prefix /usr/local/bin/ $(NAME)_$(VERSION)_linux_amd64.zip
	fpm -s zip -t rpm  --rpm-dist el7 -n $(NAME) -v $(VERSION) --prefix /usr/local/bin/ $(NAME)_$(VERSION)_linux_amd64.zip

DESTDIR=~/Library/Developer/Xcode/Templates/File\ Templates
IOSDESTDIR=$(DESTDIR)/Cocoa\ Touch
OSXDESTDIR=$(DESTDIR)/Cocoa
TEMPLATE="OCUnit test case.xctemplate"

install:
	mkdir -p $(IOSDESTDIR)
	cp -R iOS/$(TEMPLATE) $(IOSDESTDIR)
	mkdir -p $(OSXDESTDIR)
	cp -R OSX/$(TEMPLATE) $(OSXDESTDIR)

uninstall:
	rm -rf $(IOSDESTDIR)/$(TEMPLATE)
	rm -rf $(OSXDESTDIR)/$(TEMPLATE)

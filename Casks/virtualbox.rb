class Virtualbox < Cask
  url 'http://download.virtualbox.org/virtualbox/4.2.14/VirtualBox-4.2.14-86644-OSX.dmg'
  homepage 'http://www.virtualbox.org'
  version '4.2.14-86644'
  sha1 'c7f02ce0f60a0db45c060a99856fc4e139006616eb799b5fb60dc2bebf2a5a75'
  install 'VirtualBox.pkg'
end

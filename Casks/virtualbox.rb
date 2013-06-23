class Virtualbox < Cask
  url 'http://download.virtualbox.org/virtualbox/4.2.14/VirtualBox-4.2.14-86644-OSX.dmg'
  homepage 'http://www.virtualbox.org'
  version '4.2.14-86644'
  sha1 '93c36db799d53acaed7bb18c1402c6f11671f40a'
  install 'VirtualBox.pkg'
end

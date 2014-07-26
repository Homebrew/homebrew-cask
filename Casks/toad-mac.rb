class ToadMac < Cask
  url 'http://community-downloads.quest.com/toadsoft/toadmacedition/ToadMacEdition_106.pkg'
  homepage 'http://www.toadworld.com/products/toad-mac-edition/default.aspx'
  version '1.0.6'
  sha1 '9538b44efdc15d2bfc9355b06449ecaa8a48945d'
  install 'ToadMacEdition_106.pkg'
  uninstall :pkgutil => 'com.dell.Toad', :files => '/Applications/Toad.app'
end

class ToadMac < Cask
  url 'http://community-downloads.quest.com/toadsoft/toadmacedition/ToadMacEdition_108.pkg'
  homepage 'http://www.toadworld.com/products/toad-mac-edition/default.aspx'
  version '1.0.8'
  sha1 '2f95668c4a1f02ea8ba6edd4e09586590d0abefd'
  install 'ToadMacEdition_108.pkg'
  uninstall :pkgutil => 'com.dell.Toad', :files => '/Applications/Toad.app'
end

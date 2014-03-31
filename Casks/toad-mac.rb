class ToadMac < Cask
  url 'http://community-downloads.quest.com/toadsoft/toadmacedition/ToadMacEdition_108.pkg'
  homepage 'http://www.toadworld.com/products/toad-mac-edition/default.aspx'
  version '1.0.8'
  sha256 'd02861e2319197730b16d112134f46f75b263d79ba6be29f6d9e33837c031fb9'
  install 'ToadMacEdition_108.pkg'
  uninstall :pkgutil => 'com.dell.Toad', :files => '/Applications/Toad.app'
end

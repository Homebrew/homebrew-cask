class TitaniumStudio < Cask
  url 'http://titanium-studio.s3.amazonaws.com/latest/Titanium_Studio.dmg'
  homepage 'https://my.appcelerator.com/resources'
  version 'latest'
  no_checksum
  caskroom_only true
  caveats do
    manual_installer 'Titanium Studio.app'
  end
end

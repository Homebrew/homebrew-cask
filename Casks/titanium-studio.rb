class TitaniumStudio < Cask
  url 'http://titanium-studio.s3.amazonaws.com/latest/Titanium_Studio.dmg'
  homepage 'https://my.appcelerator.com/resources'
  version 'latest'
  no_checksum
  link 'Titanium Studio'
  caveats do
    manual_installer 'Titanium Studio.app'
  end
end

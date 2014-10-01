class TitaniumStudio < Cask
  version :latest
  sha256 :no_check

  url 'https://titanium-studio.s3.amazonaws.com/latest/Titanium_Studio.dmg'
  homepage 'https://my.appcelerator.com/resources'
  license :unknown

  caveats do
    manual_installer 'Titanium Studio.app'
  end
end

cask :v1 => 'titanium-studio' do
  version :latest
  sha256 :no_check

  url 'https://titanium-studio.s3.amazonaws.com/latest/Titanium_Studio.dmg'
  homepage 'https://my.appcelerator.com/resources'
  license :unknown

  installer :manual => 'Titanium Studio.app'
end

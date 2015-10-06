cask :v1 => 'vox' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  name 'VOX'
  appcast 'http://updates.devmate.com/com.coppertino.Vox.xml',
          :sha256 => '58ad80623910ef66df8d2c2a823647ebc71a25b81ab7253b241e3db1516e08b1'
  homepage 'https://coppertino.com/vox/mac'
  license :freemium

  app 'VOX.app'
end

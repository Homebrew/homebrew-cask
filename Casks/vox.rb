cask 'vox' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          :sha256 => '66ec1b8207f876ef8b77dc062301f8c149c4899647cbe9549ee9f4547a919bad'
  name 'VOX'
  homepage 'https://coppertino.com/vox/mac'
  license :freemium

  app 'VOX.app'
end

cask :v1 => 'ubar' do
  version '2.4.6'
  sha256 '7b65d412a6ebbb1fc22477176f40b431b482ce244870c6031be990fed8a788e3'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.gsub('.','')}.zip"
  appcast 'http://brawersoftware.com/appcasts/feeds/ubar/ubar2.xml'
  name 'uBar'
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  app 'uBar.app'

  depends_on :macos => '>= :mavericks'
end

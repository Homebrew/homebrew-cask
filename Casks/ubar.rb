cask :v1 => 'ubar' do
  version '2.4.7'
  sha256 '81089a544fa8d37d1632b120811156160b2fb513a20e4d139928341564b2f552'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.gsub('.','')}.zip"
  appcast 'http://brawersoftware.com/appcasts/feeds/ubar/ubar2.xml'
  name 'uBar'
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  app 'uBar.app'

  depends_on :macos => '>= :mavericks'
end

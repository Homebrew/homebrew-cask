cask :v1 => 'ubar' do
  version '2.4.5'
  sha256 '6aaf782bc0230ea24a29ed71221040e850cbac259bd321c5ccfa65843e250079'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.gsub('.','')}.zip"
  appcast "http://brawersoftware.com/appcasts/feeds/ubar/ubar2.xml"
  name 'uBar'
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  app 'uBar.app'

  depends_on :macos => '>= :mavericks'
end

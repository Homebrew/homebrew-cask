cask :v1 => 'ubar' do
  version '2.4.3'
  sha256 '0025ee1fa5c7bf14748fa301d03835d1ea7e10a89890b95715e369916aab0480'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.gsub('.','')}.zip"
  appcast "http://brawersoftware.com/appcasts/feeds/ubar/ubar2.xml"
  name 'uBar'
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  app 'uBar.app'

  depends_on :macos => '>= :mavericks'
end

cask :v1 => 'ubar' do
  version '2.4.2'
  sha256 'b47a1c9056f1613c5f9347a1798fd226700582c2e2a55a837fe84fe5908f319e'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.gsub('.','')}.zip"
  appcast "http://brawersoftware.com/appcasts/feeds/ubar/ubar2.xml"
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  app 'uBar.app'

  depends_on :macos => '>= :mavericks'
end

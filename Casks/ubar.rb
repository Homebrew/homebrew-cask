cask :v1 => 'ubar' do
  version '2.4.0'
  sha256 'a131a7f10a22ffcdd621d7dea9cdb3cdd24107c3856d381e50ddb3fe83b0ab36'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.gsub('.','')}.zip"
  appcast "http://brawersoftware.com/appcasts/feeds/ubar/ubar2.xml"
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  app 'uBar.app'

  depends_on :macos => '>= :mavericks'
end

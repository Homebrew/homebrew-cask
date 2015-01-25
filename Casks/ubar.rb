cask :v1 => 'ubar' do
  version '2.4.4'
  sha256 '59f9da183cd4175500d351aa67b188a8c0abeb5c27c8a6a59e81166dfd8a3d9a'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.gsub('.','')}.zip"
  appcast "http://brawersoftware.com/appcasts/feeds/ubar/ubar2.xml"
  name 'uBar'
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  app 'uBar.app'

  depends_on :macos => '>= :mavericks'
end

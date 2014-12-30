cask :v1 => 'ubar' do
  version '2.4.1'
  sha256 '5741386eb86cc3ee347f983528bcb7b07dd4cc3b4a6bfa10d285162c2071db6f'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.gsub('.','')}.zip"
  appcast "http://brawersoftware.com/appcasts/feeds/ubar/ubar2.xml"
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  app 'uBar.app'

  depends_on :macos => '>= :mavericks'
end

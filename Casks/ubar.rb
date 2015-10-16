cask :v1 => 'ubar' do
  version '3.0.9'
  sha256 'f05de1427fdf6cf4ca7d177e99da783bf2c499e99d2215539e69de3617a5536c'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.delete('.')}.zip"
  appcast "http://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.to_i}.xml",
          :sha256 => '7a2d319198f5fdc3e358a8238003cd87635ae0b47a5ddba5e598ac5f19bb7674'
  name 'uBar'
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  app 'uBar.app'

  depends_on :macos => '>= :mavericks'
end

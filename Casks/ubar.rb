cask :v1 => 'ubar' do
  version '3.1.1'
  sha256 'f5470e803ba75977099a9582a6d2eabd39aaad9baf6028bbc60b53a1c9bcc409'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.delete('.')}.zip"
  appcast "http://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.to_i}.xml",
          :sha256 => 'd7b751ea9c7cbbf04f549bfc24c8be2ea2901e5e0157b25216f0789a52620d1f'
  name 'uBar'
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  app 'uBar.app'

  depends_on :macos => '>= :mavericks'
end

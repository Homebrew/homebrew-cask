cask :v1 => 'ubar' do
  version '3.0.5'
  sha256 '302d6fcd0213ef2e8698e3ba54d52bf610b2f51745a3b4175b379e401d247e7c'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.delete('.')}.zip"
  appcast "http://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.to_i}.xml",
          :sha256 => 'bc407a2ec6071e585a0a3843b49f7df32a7a38a77dafd79cc63e8ae197f21d13'
  name 'uBar'
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  app 'uBar.app'

  depends_on :macos => '>= :mavericks'
end

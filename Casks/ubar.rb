cask :v1 => 'ubar' do
  version '3.0.5'
  sha256 '302d6fcd0213ef2e8698e3ba54d52bf610b2f51745a3b4175b379e401d247e7c'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.delete('.')}.zip"
  appcast "http://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.to_i}.xml",
          :sha256 => '5dc00bb3879db4f815967918a1c2636ea2a97ddc229472a81505ddbcb2d41401'
  name 'uBar'
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  app 'uBar.app'

  depends_on :macos => '>= :mavericks'
end

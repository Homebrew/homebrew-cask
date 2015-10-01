cask :v1 => 'ubar' do
  version '3.0.3'
  sha256 '6e3d650aa0560e7f71c4e4b68f1fd175c1c76a9611fc7f2def7d0fe53ba383fc'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.delete('.')}.zip"
  appcast "http://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.to_i}.xml",
          :sha256 => 'bc407a2ec6071e585a0a3843b49f7df32a7a38a77dafd79cc63e8ae197f21d13'
  name 'uBar'
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  app 'uBar.app'

  depends_on :macos => '>= :mavericks'
end

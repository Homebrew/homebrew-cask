cask :v1 => 'ubar' do
  version '2.5.0'
  sha256 '0b5388a7bd599d48836e08b9138acc0c802aa86e65d6128f66e03a734eb2a823'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.gsub('.','')}.zip"
  appcast "http://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.to_i}.xml",
          :sha256 => 'bc407a2ec6071e585a0a3843b49f7df32a7a38a77dafd79cc63e8ae197f21d13'
  name 'uBar'
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  app 'uBar.app'

  depends_on :macos => '>= :mavericks'
end

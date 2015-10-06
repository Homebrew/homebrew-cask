cask :v1 => 'ubar' do
  version '3.0.7'
  sha256 'b9556c8372fed923c2f47453ee39b09d8205714f24a2ff6945e9823ebb9348eb'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.delete('.')}.zip"
  appcast "http://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.to_i}.xml",
          :sha256 => 'd40b6128b26ff79b0da8e8022017dffde1e74c8fc42730574ce74bc234c5533e'
  name 'uBar'
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  app 'uBar.app'

  depends_on :macos => '>= :mavericks'
end

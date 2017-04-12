cask 'the-escapers-flux' do
  version '6.1.13'
  sha256 '582bd6abcf49f3c1e67547020af7a7fd4026f3c7e8e3ff373e985361e98934f9'

  # amazonaws.com/Flux was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'http://s3.amazonaws.com/Flux/flux.xml',
          checkpoint: '9de24e75553e652fad15b333e89bd126668b51d45dcbcacea9092f23e804067c'
  name 'Flux'
  homepage 'http://www.theescapers.com/product.php?product=flux'

  app 'Flux.app'
end

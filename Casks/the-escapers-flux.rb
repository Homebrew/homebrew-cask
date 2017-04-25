cask 'the-escapers-flux' do
  version '7.0.4'
  sha256 '39ac23c213731caf5474f623b620a2cb9a1c8c61403ac3bcfa44c00ffc121342'

  # amazonaws.com/Flux was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'http://s3.amazonaws.com/Flux/flux.xml',
          checkpoint: '26104dcb813671c024c6e70d4ab881d566840d178acd9065bd56b5b2c74f2d0c'
  name 'Flux'
  homepage 'http://www.theescapers.com/product.php?product=flux'

  app 'Flux.app'
end

cask 'the-escapers-flux' do
  version '7.0.8'
  sha256 '2114522e95f43d5bfb15515ea7889fb6f09188c03ad16fba0f75d64337f6e7cf'

  # amazonaws.com/Flux was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'http://s3.amazonaws.com/Flux/flux.xml',
          checkpoint: '850a78a66645f02608edfb2e5d0deaa8e3f99db860aa4ad0795f38c93b1ab43b'
  name 'Flux'
  homepage 'http://www.theescapers.com/product.php?product=flux'

  app 'Flux.app'
end

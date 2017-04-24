cask 'the-escapers-flux' do
  version '7.0.3'
  sha256 '1f6f9f41da1b37661be42167c97a61936ec789d4cc2731e9d303fda103392a8a'

  # amazonaws.com/Flux was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'http://s3.amazonaws.com/Flux/flux.xml',
          checkpoint: '1e8d171e9e6e964de17ed9fb967afc5f205085d9d184f7ec5c82484024b50c42'
  name 'Flux'
  homepage 'http://www.theescapers.com/product.php?product=flux'

  app 'Flux.app'
end

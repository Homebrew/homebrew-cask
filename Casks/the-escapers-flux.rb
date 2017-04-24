cask 'the-escapers-flux' do
  version '7.0.1'
  sha256 'eabe7049aad6a56a80b8ecdb3abc8163100f8a2a9eb5bc1e4c48864dfeb70683'

  # amazonaws.com/Flux was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'http://s3.amazonaws.com/Flux/flux.xml',
          checkpoint: '4acbad66977c8639e30f8d7b6c1d3a40e05d8b26de251c4a54fd19321dbb3e81'
  name 'Flux'
  homepage 'http://www.theescapers.com/product.php?product=flux'

  app 'Flux.app'
end

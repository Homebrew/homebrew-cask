cask 'the-escapers-flux' do
  version '7.1.5'
  sha256 'e140827287bdd62e566dff6eaef632572c266ef3bcdae7a51fbb0aaef4784c30'

  # amazonaws.com/Flux was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'http://s3.amazonaws.com/Flux/flux.xml',
          checkpoint: '925fc4a4cdd9b4a0f82ebd0a2ab0e47e59799d3fbe99dd9cff0920a2d4a8767e'
  name 'Flux'
  homepage 'http://www.theescapers.com/product.php?product=flux'

  app 'Flux.app'
end

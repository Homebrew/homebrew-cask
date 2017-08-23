cask 'the-escapers-flux' do
  version '7.1.4'
  sha256 '60c02c10ada8474c6dcc0c9d53443cde771839248ee3ef9ab63cf6b009c9e327'

  # amazonaws.com/Flux was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'http://s3.amazonaws.com/Flux/flux.xml',
          checkpoint: '2d2da03ed273b921d60fe3c6916668044736ab9349d8b037e22c1cebeb4cffa3'
  name 'Flux'
  homepage 'http://www.theescapers.com/product.php?product=flux'

  app 'Flux.app'
end

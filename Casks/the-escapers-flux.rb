cask 'the-escapers-flux' do
  version '7.1.2'
  sha256 '36dc2830072bdd59bce6326899404ee52664b6d448ebaa97c6f25cca507a6cb3'

  # amazonaws.com/Flux was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'http://s3.amazonaws.com/Flux/flux.xml',
          checkpoint: 'b48fdd17ba6406585ec934ca63493844329233c1aa6a0b8c2398f9a6fc7c24dd'
  name 'Flux'
  homepage 'http://www.theescapers.com/product.php?product=flux'

  app 'Flux.app'
end

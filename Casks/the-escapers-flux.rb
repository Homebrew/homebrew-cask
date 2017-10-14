cask 'the-escapers-flux' do
  version '7.1.7'
  sha256 '64566f1b18753f05f6ec5e437b928e44f68f3087841f7b47f87c13d43a64d65a'

  # amazonaws.com/Flux was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'http://s3.amazonaws.com/Flux/flux.xml',
          checkpoint: '6f7fa5ad33cc8d8724ddb00249744751d1866217a3205619b70b0daaba363b65'
  name 'Flux'
  homepage 'http://www.theescapers.com/product.php?product=flux'

  app 'Flux.app'
end

cask 'the-escapers-flux' do
  version '7.1.3'
  sha256 'bb2e75e82b491e70893fb1cee172905afb968bee84d5795ac344b1098e11f9b7'

  # amazonaws.com/Flux was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'http://s3.amazonaws.com/Flux/flux.xml',
          checkpoint: 'e8f26e3afdb06b7ffb3a3bbc18e1da5800a590a2914692b6a309cb606618ad3f'
  name 'Flux'
  homepage 'http://www.theescapers.com/product.php?product=flux'

  app 'Flux.app'
end

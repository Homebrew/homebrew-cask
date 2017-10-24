cask 'the-escapers-flux' do
  version '7.1.8'
  sha256 '1b1830a1425b63cf3b2cc4e1ed5baf9d993b9622fe2107ecd1577831ee1064ad'

  # amazonaws.com/Flux was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'http://s3.amazonaws.com/Flux/flux.xml',
          checkpoint: '2110a36e0cb430eca9b84e45e4088d38b2a946461e908e569debd07509bab351'
  name 'Flux'
  homepage 'http://www.theescapers.com/product.php?product=flux'

  app 'Flux.app'
end

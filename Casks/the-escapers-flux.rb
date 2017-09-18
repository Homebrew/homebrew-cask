cask 'the-escapers-flux' do
  version '7.1.6'
  sha256 'e63cfdd5ea5f824890c1c7a4e4dd6f49b2b124cf8a0bb441632c464496819ce8'

  # amazonaws.com/Flux was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'http://s3.amazonaws.com/Flux/flux.xml',
          checkpoint: '61152db3d88c25b14525e3a3c7661ae5e3191fb631a1b8fb22ffc4e28fa0f52f'
  name 'Flux'
  homepage 'http://www.theescapers.com/product.php?product=flux'

  app 'Flux.app'
end

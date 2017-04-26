cask 'the-escapers-flux' do
  version '7.0.5'
  sha256 '773ca79588ef41bb7b2e5b43fca37a8c25cacc723b4e7efe46223808709284c7'

  # amazonaws.com/Flux was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'http://s3.amazonaws.com/Flux/flux.xml',
          checkpoint: '911687c0fafd3a486e20c40e7311b5dc0b410fb7aa2adf41bd4af4d472424b7b'
  name 'Flux'
  homepage 'http://www.theescapers.com/product.php?product=flux'

  app 'Flux.app'
end

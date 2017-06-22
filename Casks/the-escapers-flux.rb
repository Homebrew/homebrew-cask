cask 'the-escapers-flux' do
  version '7.1.0'
  sha256 '08f24df342d7abc50ceaa01cbaddd66619c57df498f747eff29281e752e6ceee'

  # amazonaws.com/Flux was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'http://s3.amazonaws.com/Flux/flux.xml',
          checkpoint: '6bf528da2a326f87abb64653d237684a367137171a35c8934a65a795c5d5ac19'
  name 'Flux'
  homepage 'http://www.theescapers.com/product.php?product=flux'

  app 'Flux.app'
end

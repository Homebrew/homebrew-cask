cask 'the-escapers-flux' do
  version '6.0.16'
  sha256 '9e2a0a1ae4483a2842b6d7ca5df3dbb89a07c5e192a7c35b35c2d380b60f019e'

  # amazonaws.com/Flux was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'http://www.theescapers.com/flux/flux.xml',
          checkpoint: '5186709410d51bcd39f1fc569ecee474c97846173e483871eb8d1fd7ddf06099'
  name 'Flux'
  homepage 'http://www.theescapers.com/flux/'

  app 'Flux.app'
end

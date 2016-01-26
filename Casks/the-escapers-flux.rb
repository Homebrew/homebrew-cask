cask 'the-escapers-flux' do
  version '5.6.15'
  sha256 '01e2eeaa6259df5d0443d589fb0cb989d4fdfb79d55a535352f9deac534b9466'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'http://www.theescapers.com/flux/flux.xml',
          checkpoint: '5186709410d51bcd39f1fc569ecee474c97846173e483871eb8d1fd7ddf06099'
  name 'Flux'
  homepage 'http://www.theescapers.com/flux/'
  license :commercial

  app 'Flux.app'
end

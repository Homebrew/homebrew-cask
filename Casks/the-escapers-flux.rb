cask 'the-escapers-flux' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/Flux/FluxV5.zip'
  appcast 'http://www.theescapers.com/flux/flux.xml',
          :checkpoint => '5186709410d51bcd39f1fc569ecee474c97846173e483871eb8d1fd7ddf06099'
  name 'Flux'
  homepage 'http://www.theescapers.com/flux/'
  license :commercial

  app 'Flux.app'
end

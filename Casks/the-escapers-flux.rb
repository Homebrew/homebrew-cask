cask 'the-escapers-flux' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/Flux/FluxV5.zip'
  appcast 'http://www.theescapers.com/flux/flux.xml',
          :checkpoint => '5cb4cc1b6b0f7009468a3b71f92a5cc87af6db34cb7691cbf3bf444265d4cbb0'
  name 'Flux'
  homepage 'http://www.theescapers.com/flux/'
  license :commercial

  app 'Flux.app'
end

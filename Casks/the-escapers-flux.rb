cask :v1 => 'the-escapers-flux' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/Flux/FluxV5.zip'
  appcast 'http://www.theescapers.com/flux/flux.xml'
  name 'Flux'
  homepage 'http://www.theescapers.com/flux/'
  license :commercial

  app 'Flux.app'
end

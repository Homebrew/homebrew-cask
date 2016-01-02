cask 'the-escapers-flux' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/Flux/FluxV5.zip'
  appcast 'http://www.theescapers.com/flux/flux.xml',
          :sha256 => '6009776cc039c416b04d0dd140b8fc96d6136b9d4457f3104afa90426a37b725'
  name 'Flux'
  homepage 'http://www.theescapers.com/flux/'
  license :commercial

  app 'Flux.app'
end

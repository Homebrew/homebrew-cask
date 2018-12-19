cask 'the-escapers-flux' do
  version '7.1.10'
  sha256 'e376ed9e57a15db39a5f0a957d715d437b8bcf5024936a3f54dc1b1eef60c318'

  # amazonaws.com/Flux was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/Flux/FluxV#{version.major}.zip"
  appcast 'https://s3.amazonaws.com/Flux/flux.xml'
  name 'Flux'
  homepage 'http://www.theescapers.com/flux/'

  app 'Flux.app'
end

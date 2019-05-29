cask 'veraview' do
  version '2.4.3'
  sha256 '57c7a10cb232ff69294f2aad731d84d3b6ced53ce6650bd4c48f1bb30bbbec80'

  # newton.ornl.gov/casl was verified as official when first introduced to the cask
  url "https://newton.ornl.gov/casl/VERAView-#{version}-MacOSX.dmg"
  appcast 'https://newton.ornl.gov/casl/'
  name 'veraview'
  homepage 'https://github.com/CASL/VERAview'

  app 'VERAView.app'
end

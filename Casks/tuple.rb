cask 'tuple' do
  version '0.69.0,2020-04-04-576f0166'
  sha256 'f2a51c266d865803627ccc58e2d6d9213dae1826a428f9e45199432001825743'

  # s3.us-east-2.amazonaws.com/tuple-releases was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  auto_updates true

  app 'Tuple.app'
end

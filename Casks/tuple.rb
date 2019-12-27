cask 'tuple' do
  version '0.57.1,2019-12-13-4b1004b1'
  sha256 'dac34f8599108a5b2c68b2989dd71843f1dcec2a94df2de591f1eee0c384de4d'

  # s3.us-east-2.amazonaws.com/tuple-releases was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  app 'Tuple.app'
end

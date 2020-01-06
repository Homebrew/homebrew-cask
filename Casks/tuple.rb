cask 'tuple' do
  version '0.58.1,2020-01-03-31852687'
  sha256 'fc43cec91f5f38ec00408d96d7db5371eaa585fd6b6a0a4af119a6c7871122f4'

  # s3.us-east-2.amazonaws.com/tuple-releases was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  app 'Tuple.app'
end

cask 'tuple' do
  version '0.54.0,2019-11-14-a9f31ba3'
  sha256 '7bbeb960ad320a99eaa7b3238ede303748dc7cbd04fc81dbe9c5e64fd11def50'

  # s3.us-east-2.amazonaws.com/tuple-releases was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  app 'Tuple.app'
end

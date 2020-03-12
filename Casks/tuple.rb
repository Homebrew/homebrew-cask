cask 'tuple' do
  version '0.63.2,2020-03-12-f143ee17'
  sha256 'ab2df19e131f74e5fe0f9e18f3a543f4a578cccbfd6f3f31bf438d123ebca6d4'

  # s3.us-east-2.amazonaws.com/tuple-releases was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  app 'Tuple.app'
end

cask 'tuple' do
  version '0.64.2,2020-03-18-14ba6ac8'
  sha256 '95f791d2236ab6e7d962b6d2ad021dae88ad59050c82f167202e1aaae23a5e79'

  # s3.us-east-2.amazonaws.com/tuple-releases was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  app 'Tuple.app'
end

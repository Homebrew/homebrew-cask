cask 'tuple' do
  version '0.70.0,2020-04-16-aa516dc9'
  sha256 '74a12965d6b2d3b2895ac2e5904fa885be7bb2a8bc2f60f61fe202a0faf53a61'

  # s3.us-east-2.amazonaws.com/tuple-releases/ was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  auto_updates true

  app 'Tuple.app'
end

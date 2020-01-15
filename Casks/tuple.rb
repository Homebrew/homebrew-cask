cask 'tuple' do
  version '0.59.1,2020-01-11-f5c186ef'
  sha256 '250bf6a0611531a1a5c924732bf0f7e299e89fd3ba844d2a6261612a9df3791a'

  # s3.us-east-2.amazonaws.com/tuple-releases was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  app 'Tuple.app'
end

cask 'tuple' do
  version '0.66.0,2020-03-25-78ebeb79'
  sha256 'bc5f7b8c561ce2e201068b44402cb0b81ae28c997325fd41e4116bee5dd01d7a'

  # s3.us-east-2.amazonaws.com/tuple-releases was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  app 'Tuple.app'
end

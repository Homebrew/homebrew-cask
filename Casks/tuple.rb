cask 'tuple' do
  version '0.55.0,2019-11-20-80c5fb33'
  sha256 '0c280b76ca572c1a26d5a9c85cad7dd5dff51ab6ee8aed7908eb6821e07896c4'

  # s3.us-east-2.amazonaws.com/tuple-releases was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  app 'Tuple.app'
end

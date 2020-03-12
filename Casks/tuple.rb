cask 'tuple' do
  version '0.63.0,2020-03-10-1bff8082'
  sha256 'e1f0aaa84f7b26fb5478365ff47fd342ece367b67128b8ef588b31d4f5958acc'

  # s3.us-east-2.amazonaws.com/tuple-releases was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  app 'Tuple.app'
end

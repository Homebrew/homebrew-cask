cask 'tuple' do
  version '0.56.0,2019-12-05-fff7b574'
  sha256 'ded56bdb276fae8a806a49cab6fc71de284f1beba5f5675896239e66e90bf259'

  # s3.us-east-2.amazonaws.com/tuple-releases was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  app 'Tuple.app'
end

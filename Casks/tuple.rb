cask 'tuple' do
  version '0.53.1,2019-11-07-110631ac'
  sha256 'be4bb99757e08bb7e2d5193d89effcf3dfbdc8a5ef075c6d383b0c5032ecf020'

  # s3.us-east-2.amazonaws.com/tuple-releases was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  app 'Tuple.app'
end

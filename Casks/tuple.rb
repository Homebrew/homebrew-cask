cask 'tuple' do
  version '0.69.3,2020-04-09-21c351f7'
  sha256 '94849b731e6ec1b717ae3ba788d987b9af0a72338361430fd79fbd6f249b1705'

  # s3.us-east-2.amazonaws.com/tuple-releases was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  auto_updates true

  app 'Tuple.app'
end

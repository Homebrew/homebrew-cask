cask 'tuple' do
  version '0.69.2,2020-04-08-2dce3177'
  sha256 '7963b34473137a7ca647aa5e85872f8cc5c35ced06efcd47656fec72fa82f403'

  # s3.us-east-2.amazonaws.com/tuple-releases was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  auto_updates true

  app 'Tuple.app'
end

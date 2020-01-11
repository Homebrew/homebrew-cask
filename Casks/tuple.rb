cask 'tuple' do
  version '0.59.0,2020-01-09-249fbd10'
  sha256 '6e3862aa4a41ff4ddd944507abdc4a32a6ebc419f6daf270bddefa52ddfd1a62'

  # s3.us-east-2.amazonaws.com/tuple-releases was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  app 'Tuple.app'
end

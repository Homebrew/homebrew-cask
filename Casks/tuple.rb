cask 'tuple' do
  version '0.64.1,2020-03-17-4c460060'
  sha256 '3551d8546cbbd0f6e8e15dadd9ceb0b42ddd7147f7b9799c982bc00c51f8be90'

  # s3.us-east-2.amazonaws.com/tuple-releases was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/tuple-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://s3.us-east-2.amazonaws.com/tuple-releases/production/sparkle/appcast.xml'
  name 'Tuple'
  homepage 'https://tuple.app/'

  app 'Tuple.app'
end

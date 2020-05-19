cask 'timecamp' do
  version '1.5.4.1'
  sha256 'b4ae19f187fadec3ca58975baec55364ca01622ac77b2e57a29f95a68724eb5b'

  # timecamp.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://timecamp.s3.amazonaws.com/downloadsoft/#{version}/TimeCampSetup_macOS.dmg"
  name 'TimeCamp'
  homepage 'https://www.timecamp.com/'

  app 'TimeCamp.app'

  zap rmdir: '~/Library/Application Support/TimeCamp'
end

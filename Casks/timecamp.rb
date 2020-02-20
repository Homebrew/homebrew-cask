cask 'timecamp' do
  version '1.4.6.2'
  sha256 '74dee429fabfcdd3f6a9d0d755bbe1ca056433392d73f4b64e14182fdfb70c0c'

  # timecamp.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://timecamp.s3.amazonaws.com/downloadsoft/#{version}/TimeCampSetup_macOS.dmg"
  name 'TimeCamp'
  homepage 'https://www.timecamp.com/'

  app 'TimeCamp.app'

  zap rmdir: '~/Library/Application Support/TimeCamp'
end

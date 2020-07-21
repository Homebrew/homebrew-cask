cask 'timecamp' do
  version '1.5.6.2'
  sha256 'f9abc1bde12f1862da8fe6d06de29778deeb8953230f95fe816367b097879c88'

  # timecamp.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://timecamp.s3.amazonaws.com/downloadsoft/#{version}/TimeCampSetup_macOS.dmg"
  name 'TimeCamp'
  homepage 'https://www.timecamp.com/'

  app 'TimeCamp.app'

  zap rmdir: '~/Library/Application Support/TimeCamp'
end

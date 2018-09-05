cask 'timecamp' do
  version :latest
  sha256 :no_check

  url 'https://www.timecamp.com/downloadsoft/TimeCamp.dmg'
  name 'TimeCamp'
  homepage 'https://www.timecamp.com/'

  app 'TimeCamp.app'

  zap rmdir: '~/Library/Application Support/TimeCamp'
end

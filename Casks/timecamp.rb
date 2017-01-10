cask 'timecamp' do
  version '1.3.78'
  sha256 '69049d5ca4b12166fa91724d01762310bc9d09326e4ad3f91822a3ac77b2fb46'

  # downloads page is https://www.timecamp.com/helper/download
  url 'https://www.timecamp.com/downloadsoft/TimeCamp.dmg'
  name 'TimeCamp'
  homepage 'https://www.timecamp.com/'

  app 'TimeCamp.app'

  zap rmdir: [
               '~/Library/Application Support/TimeCamp'
             ]
end

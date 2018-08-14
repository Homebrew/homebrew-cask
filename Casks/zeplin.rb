cask 'zeplin' do
  version :latest
  sha256 :no_check

  # downloads can be found at https://support.zeplin.io/quick-start/downloading-mac-and-windows-apps
  # zpl.io was verified as official when first introduced to the cask
  url 'https://api.zeplin.io/urls/download-mac'
  name 'Zeplin'
  homepage 'https://zeplin.io/'

  app 'Zeplin.app'

  zap trash: [
               '~/Library/Logs/Zeplin',
               '~/Library/Caches/io.zeplin.osx',
               '~/Library/Preferences/io.zeplin.osx.plist',
             ]
end

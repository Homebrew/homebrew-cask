cask 'zeplin' do
  version :latest
  sha256 :no_check

  # downloads can be found at https://zeplin.io/support.html#download
  # zpl.io was verified as official when first introduced to the cask
  url 'https://zpl.io/download'
  name 'Zeplin'
  homepage 'https://zeplin.io/'

  auto_updates true

  app 'Zeplin.app'

  zap trash: [
               '~/Library/Logs/Zeplin',
               '~/Library/Caches/io.zeplin.osx',
               '~/Library/Preferences/io.zeplin.osx.plist',
             ]
end

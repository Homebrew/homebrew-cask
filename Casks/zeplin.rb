cask 'zeplin' do
  version '1.20'
  sha256 '2d47689a6440a3562c2526d85263e997d83d1360b3f8b30afcdd440e889edf1f'

  # downloads can be found at https://zeplin.io/support.html#download
  # zpl.io was verified as official when first introduced to the cask
  url 'https://zpl.io/download'
  name 'Zeplin'
  homepage 'https://zeplin.io/'

  app 'Zeplin.app'

  zap trash: [
               '~/Library/Logs/Zeplin',
               '~/Library/Caches/io.zeplin.osx',
               '~/Library/Preferences/io.zeplin.osx.plist',
             ]
end

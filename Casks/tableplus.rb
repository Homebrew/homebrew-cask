cask 'tableplus' do
  version '1.0,71'
  sha256 '4c07f7f485a5387d8c5fdbc7f0e118880722b47e06ee22779eb376a6d6f3d437'

  url 'https://tableplus.io/release/osx/tableplus_latest.zip'
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: '4eac0dc2540f31e9f1d9f50032c574fafdd8f03796a68413082961161539804c'
  name 'TablePlus'
  homepage 'https://tableplus.io/'

  auto_updates true

  app 'TablePlus.app'

  zap trash: [
               '~/Library/Application Support/com.tinyapp.TablePlus',
               '~/Library/Caches/com.tinyapp.TablePlus',
               '~/Library/Cookies/com.tinyapp.TablePlus.binarycookies',
               '~/Library/Preferences/com.tinyapp.TablePlus.plist',
             ]
end

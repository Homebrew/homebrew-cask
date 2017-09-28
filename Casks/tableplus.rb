cask 'tableplus' do
  version '1.0,63'
  sha256 '89fe8bf308d55bb97a3b30dd72ae853c16bc4aa14bcc8ecf3de8fd646a9228e0'

  url 'https://tableplus.io/release/osx/tableplus_latest.zip'
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: 'a04f68a0d2c322c0d1261b5656f40a139522bec926e2163599004b409bee30c7'
  name 'TablePlus'
  homepage 'https://tableplus.io/'

  auto_updates true

  app 'TablePlus.app'

  zap delete: [
                '~/Library/Application Support/com.tinyapp.TablePlus',
                '~/Library/Caches/com.tinyapp.TablePlus',
                '~/Library/Cookies/com.tinyapp.TablePlus.binarycookies',
                '~/Library/Preferences/com.tinyapp.TablePlus.plist',
              ]
end

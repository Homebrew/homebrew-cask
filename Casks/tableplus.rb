cask 'tableplus' do
  version '1.0,66'
  sha256 'f890deba75cdddfac1e749d2619e5d9cb15b8212d7811b27a32fbada8664b40c'

  url 'https://tableplus.io/release/osx/tableplus_latest.zip'
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: '33ca7e33e50d4b90530b1dc9bd4fa7870ba8bb91657d9f2a58d628f0b6901dcc'
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

cask 'tableplus' do
  version :latest
  sha256 :no_check

  url 'https://tableplus.io/release/osx/tableplus_latest.zip'
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: 'ce45c6d4a38e7b1a4af6e1f0960117ccf8191a41b41dc5db5ad1a898f3748b3c'
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

cask 'tableplus' do
  version '1.0'
  sha256 'ca5655445c2f4674eda66fd1833a9f8dedb80937073b0b4a204100e7f2b21fe5'

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

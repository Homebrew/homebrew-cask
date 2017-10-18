cask 'tableplus' do
  version '1.0,65'
  sha256 '13585ddd848ccb474cef978e669013f7b09a1841cc0de19b6ded0d560a74bfd7'

  url 'https://tableplus.io/release/osx/tableplus_latest.zip'
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: 'ee1626cc8d600edcac00e9695306657ad863e6334a5b6fee6c39d300da218b8e'
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

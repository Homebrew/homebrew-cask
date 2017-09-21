cask 'tableplus' do
  version '1.0,62'
  sha256 'e45d2bff24f32e264252e127da1329a4f46b1c06c9123aaaebe4a4f583a48f31'

  url 'https://tableplus.io/release/osx/tableplus_latest.zip'
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: 'fa5f961b5c62bb9c922c974f288faf27fb0becf34b910a1e7741c325dde2b4b8'
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

cask 'tableplus' do
  version '1.0,59'
  sha256 'db93faa8a2d4634b64de9c8aaa3584d25fc94e2d36483109a747af2a7fafb3fe'

  url 'https://tableplus.io/release/osx/tableplus_latest.zip'
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: '51cb29aa41a145dff4a5a7d515fa0807b8624da215a5b9c5ffd1621dfd75795b'
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

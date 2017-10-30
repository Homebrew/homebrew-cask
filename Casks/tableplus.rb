cask 'tableplus' do
  version '1.0,67'
  sha256 '6c1441e02682b205346f23e6f26a3f3b0a594bbdd41e08245d5794375ebe521f'

  url 'https://tableplus.io/release/osx/tableplus_latest.zip'
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: 'edbdc7a2d7b1be92889988b96501414a49bd5cfad36e928c3485ef6abbc4ddba'
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

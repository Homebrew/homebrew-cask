cask 'tableplus' do
  version '1.0,60'
  sha256 '7b6052858f004c2f5346fdebdf064d4ea85bd419839863887bf2fe5f8e5f791f'

  url 'https://tableplus.io/release/osx/tableplus_latest.zip'
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: '53de5c141ac4299f6dd7933a6c06b543f25ba9256864b807ca93281e77075e25'
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

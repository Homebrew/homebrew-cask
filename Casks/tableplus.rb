cask 'tableplus' do
  version '1.0,69'
  sha256 '1eb02426e4a1c64bf4fc3dfe0921870ede581f73753b1764a54479c53368f290'

  url 'https://tableplus.io/release/osx/tableplus_latest.zip'
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: '28f157420538ae50b5b06fe8cf5b895b37599932dbfa7a9472f32e487c5fb72b'
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

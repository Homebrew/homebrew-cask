cask 'tableplus' do
  version '1.0,78'
  sha256 '014af206f6da0bed3b91f697f311a733f444a271239fbb1bc1578c611beea11d'

  url 'https://tableplus.io/release/osx/tableplus_latest.zip'
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: 'a8fdb3255087c982b44663a09a4dd42f308997cadc4827d0c530c59bdcec1775'
  name 'TablePlus'
  homepage 'https://tableplus.io/'

  auto_updates true

  app 'TablePlus.app'

  zap trash: [
               '~/Library/Application Support/com.tinyapp.TablePlus',
               '~/Library/Caches/com.tinyapp.TablePlus',
               '~/Library/Cookies/com.tinyapp.TablePlus.binarycookies',
               '~/Library/Preferences/com.tinyapp.TablePlus.plist',
             ]
end

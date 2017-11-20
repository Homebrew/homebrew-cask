cask 'tableplus' do
  version '1.0,71'
  sha256 '4dcfce19ac6076350761793d864791346ba10e0f44c024af8e4a965c72469bcf'

  url 'https://tableplus.io/release/osx/tableplus_latest.zip'
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: '5072f1f4da09d5b73ba5f2f3cee5d455111eaec390401d05df4c4cd50f034fdc'
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

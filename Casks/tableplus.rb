cask 'tableplus' do
  version '1.0,72'
  sha256 '7da1aa85226ebe9e09e3c4b36abc8e4279655cfb5755f7662147710f055c8ff1'

  url 'https://tableplus.io/release/osx/tableplus_latest.zip'
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: '9a87a41a66e8d2f855db02d7c12f27e364d6ee2aa9388bcc66635e719ed92c6b'
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

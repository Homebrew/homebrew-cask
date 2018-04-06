cask 'tableplus' do
  version '1.0,99'
  sha256 '431ea1ffd051101e288ea423f3adf11d1c6ae7f5d9fbf531201bd261fdd148af'

  # s3.amazonaws.com/tableplus-osx-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableplus-osx-builds/#{version.after_comma}/TablePlus.zip"
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: 'f7ae2f0ca3b04a80493506b8c567e877f17fd7f554acaedf347ee2b6be25415f'
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

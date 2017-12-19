cask 'tableplus' do
  version '1.0,76'
  sha256 '2c7b21841a6ab2e54d0b331c50998698dcc6720c46b82b39a057c38c8499e939'

  url 'https://tableplus.io/release/osx/tableplus_latest.zip'
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: 'bd8f34a3e9d1c6955497f9aa9be6d49a550e6e1d0abf3fb7db53b22b20b0061e'
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

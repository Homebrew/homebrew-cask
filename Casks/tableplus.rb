cask 'tableplus' do
  version '3.0.0,286'
  sha256 '7b01822ba8405d57135d3aa4b596fa87e95a9d9822ce3ebb44ad828c3dc4cb76'

  # tableplus-osx-builds.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://tableplus-osx-builds.s3.amazonaws.com/#{version.after_comma}/TablePlus.dmg"
  appcast 'https://tableplus.io/osx/version.xml',
          configuration: version.after_comma
  name 'TablePlus'
  homepage 'https://tableplus.io/'

  auto_updates true

  app 'TablePlus.app'

  zap trash: [
               '~/Library/Application Support/com.tinyapp.TablePlus',
               '~/Library/Caches/com.tinyapp.TablePlus',
               '~/Library/Cookies/com.tinyapp.TablePlus.binarycookies',
               '~/Library/Preferences/com.tinyapp.TablePlus.plist',
               '~/Library/Saved Application State/com.tinyapp.TablePlus.savedState',
             ]
end

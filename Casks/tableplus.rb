cask 'tableplus' do
  version '2.9.1,264'
  sha256 '5d50e2627855d4f99e3ca7427aa53489e5b98e60aa31c826902b92d478dadc91'

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

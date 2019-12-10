cask 'tableplus' do
  version '2.12,282'
  sha256 '1c19dfa8ad6fe03e56ead9b4386b41ea4e1ffcbeba64d9943cf171f4162f02b6'

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

cask 'tableplus' do
  version '2.4.233'
  sha256 '45c4f67a4471e7ec482b9b85669eb1694f3cb30caf81d738ccaf9fbe47709236'

  # tableplus-osx-builds.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://tableplus-osx-builds.s3.amazonaws.com/#{version.patch}/TablePlus.dmg"
  appcast 'https://tableplus.io/osx/version.xml',
          configuration: version.patch
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

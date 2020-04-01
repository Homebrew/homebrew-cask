cask 'tableplus' do
  version '3.3.0,300'
  sha256 'ed8e8add50d60df29ee775d5296c6842b134f3f767984d3afea5ee46555f6b9a'

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

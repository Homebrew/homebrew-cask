cask 'tableplus' do
  version '2.4,228'
  sha256 'bf3350deeba7d62df1e9e2cf35d8e43c5f785d8e9e5e109d951797e6e1bef1c0'

  # s3.amazonaws.com/tableplus-osx-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableplus-osx-builds/#{version.after_comma}/TablePlus.dmg"
  appcast 'https://tableplus.io/osx/version.xml'
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

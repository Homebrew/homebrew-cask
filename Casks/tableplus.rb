cask 'tableplus' do
  version '1.0,110'
  sha256 'f7b26d3e611e9d13a98a072aee852631ab0f833e49bed32767c1540a9d19ee95'

  # s3.amazonaws.com/tableplus-osx-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableplus-osx-builds/#{version.after_comma}/TablePlus.zip"
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
             ]
end

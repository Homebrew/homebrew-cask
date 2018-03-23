cask 'tableplus' do
  version '1.0,95'
  sha256 '4b3a23606ac51ad89e0c3f50cc3def9fb664cd51d1f800d843d69df5f52ede13'

  # s3.amazonaws.com/tableplus-osx-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableplus-osx-builds/#{version.after_comma}/TablePlus.zip"
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: 'aa001dc013bba75442a12f2c02a386920607458447a099b42c202f714f8201ae'
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

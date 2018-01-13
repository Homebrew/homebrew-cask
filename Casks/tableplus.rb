cask 'tableplus' do
  version '1.0,81'
  sha256 '5289ec4f5c42d14f98e5be46ae48bb899c165f117a56146bd92f3699ad4378ce'

  # s3.amazonaws.com/tableplus-osx-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableplus-osx-builds/#{version.after_comma}/TablePlus.zip"
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: '074c1f91d52368c268cf9f149a03eae4d2c159dcf0a2849b7092ca10466ef16d'
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

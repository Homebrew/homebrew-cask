cask 'tableplus' do
  version '1.4,188'
  sha256 '82304b91cc7e53abe37b24ac7f5d424303c156559b567805573197bd54bb75db'

  # s3.amazonaws.com/tableplus-osx-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableplus-osx-builds/#{version.after_comma}/TablePlus.dmg"
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: 'e6b0a9b19bd503b107058efb1a17442d62cbc96ff70781a64a22a5d6e0ecf225'
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

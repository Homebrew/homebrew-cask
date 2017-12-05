cask 'tableplus' do
  version '1.0,74'
  sha256 'fe1d5024fe86d3e0b16a04ff82e163472a8a631a113212aebdc4aeece1a7a8b1'

  url 'https://tableplus.io/release/osx/tableplus_latest.zip'
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: '6896d088bbef23869d78bc62b81b74062c38b1fe0c9bd10b50e792f0f5890087'
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

cask 'tableplus' do
  version '1.0,90'
  sha256 '0fae8a64648a41603a3830e25f1afb72fe93ebff6c1560a76d9bd5565df8011a'

  # s3.amazonaws.com/tableplus-osx-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableplus-osx-builds/#{version.after_comma}/TablePlus.zip"
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: '576186ff3f47c1a4bb05d5ed6c8fea5ca0c2e4eea3b3574a6f9b6dd40a196a2b'
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

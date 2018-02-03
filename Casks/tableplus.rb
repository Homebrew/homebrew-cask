cask 'tableplus' do
  version '1.0,86'
  sha256 '04e03d3c8a2722c930d6c0d253984f9a35ca17fe7bc45250e2ea8f3d8cc6ab1c'

  # s3.amazonaws.com/tableplus-osx-builds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableplus-osx-builds/#{version.after_comma}/TablePlus.zip"
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: '8718ccec3b1a36f3c2419ceef02caa2e67df1e225759b8145b2d6409551bb952'
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

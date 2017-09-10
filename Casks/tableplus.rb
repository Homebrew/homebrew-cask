cask 'tableplus' do
  version '1.0,61'
  sha256 'bc739b07f56dad0692e2901c97e50434b56c1ed81789c5844b698e7b949a13ab'

  url 'https://tableplus.io/release/osx/tableplus_latest.zip'
  appcast 'https://tableplus.io/osx/version.xml',
          checkpoint: 'c6b470cc7569bf2fc4f8afb929d406dd535534e4fe70a9d0e782a24a12ff5c89'
  name 'TablePlus'
  homepage 'https://tableplus.io/'

  auto_updates true

  app 'TablePlus.app'

  zap delete: [
                '~/Library/Application Support/com.tinyapp.TablePlus',
                '~/Library/Caches/com.tinyapp.TablePlus',
                '~/Library/Cookies/com.tinyapp.TablePlus.binarycookies',
                '~/Library/Preferences/com.tinyapp.TablePlus.plist',
              ]
end

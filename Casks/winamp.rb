cask :v1 => 'winamp' do
  version '0.8.1.13'
  sha256 '9f7aecc5d424be8dc6e6e853449f3fef28ea8bcac3be09db1026f3e9039806dd'

  url "http://dl.macupdate.com/prod/Winamp-#{version}.dmg"
  homepage 'http://www.winamp.com/'
  license :unknown

  app 'Winamp.app'

  zap :delete => [
                  '~/Library/Application Support/com.nullsoft.Winamp',
                  '~/Library/Preferences/com.nullsoft.Winamp.plist',
                  '~/Library/Caches/com.nullsoft.Winamp'
                 ]
end

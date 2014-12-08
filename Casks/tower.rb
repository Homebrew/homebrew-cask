cask :v1 => 'tower' do
  version '2.1.3'
  sha256 'ee8826cbcbec2a20d9ddcd6819d607efa329ba6e574cb382caae2484049e9e19'

  url 'https://www.git-tower.com/download'
  appcast 'https://updates.fournova.com/updates/tower2-mac/stable'
  homepage 'http://www.git-tower.com/'
  license :unknown

  app 'Tower.app'

  zap :delete => [
                  '~/Library/Application Support/com.fournova.Tower2',
                  '~/Library/Preferences/com.fournova.Tower2.plist',
                 ]
end

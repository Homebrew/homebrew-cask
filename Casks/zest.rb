cask 'zest' do
  version '0.1.0-alpha2'
  sha256 '04bbe71994c7f14d4efcdfa81aac382cc75da75a98aaa875a5ccf964837daf7c'

  url "https://github.com/zestdocs/zest/releases/download/v#{version}/zest-v#{version}-pre.dmg"
  appcast 'https://github.com/zestdocs/zest/releases.atom',
          checkpoint: '187df1ed00ba73066526f98ea399c644b19f78c49792ebbcd8e1eb8627206d1a'
  name 'Zest'
  homepage 'https://zestdocs.org/'
  license :mit

  app 'Zest.app'

  zap delete: [
                '~/Library/Application Support/zest',
                '~/Library/Caches/zest',
                '~/Library/Preferences/org.zestdocs.plist',
                '~/Library/Saved Application State/org.zestdocs.savedState',
              ]
end

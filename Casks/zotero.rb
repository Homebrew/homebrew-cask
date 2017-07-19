cask 'zotero' do
  version '5.0.4'
  sha256 'a504a86ea1921260b905c5da54917bb34c3c0df97933add8214fe3a334616bf9'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: 'f447e76548240b1aa2cdf29b0dcc9bb1600924705870b661225408b756c07b69'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end

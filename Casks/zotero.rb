cask 'zotero' do
  version '5.0.30'
  sha256 'c0e4619705c7532525c407b46d0f8c171feab8fb1b35ae2ae5f473d17a56afe6'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '0c630534ced0107932acfcac96a9abebc0d7c0602a575f276ae2ad42d73f44af'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end

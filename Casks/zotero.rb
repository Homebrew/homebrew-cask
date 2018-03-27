cask 'zotero' do
  version '5.0.40'
  sha256 '9a41227e529cb8186df95d30bcfb6998c070ce2834e9a7f44aa15f540219e2ec'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '39afdac688d4bead9238a2a95a8121837b53850183594983e4d59026e5debb9d'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end

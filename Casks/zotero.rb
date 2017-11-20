cask 'zotero' do
  version '5.0.25'
  sha256 '90989e396a61259af09717b4d78d3d7718c5ae4ae0b751f9ce4245f0731476c8'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: 'd358a2e32cd2bba5ed3f4bea2a87f7fd768d70a99dc3d0950252ee697d5c2106'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end

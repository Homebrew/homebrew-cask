cask 'zotero' do
  version '5.0.84'
  sha256 'e8aacde725b36e2d831620fc3d647fbe18abcb3a64c9bd4084e6144df95acf59'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end

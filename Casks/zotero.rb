cask 'zotero' do
  version '5.0.38'
  sha256 'dc6629182015822ace8170c21498e9aa0a420386f39f05cb01c16ea9420eeb09'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '02fbad90c178d6f4a212b0c18d094db6911701e30f863beadb31d3e3be55c103'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end

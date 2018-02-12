cask 'zotero' do
  version '5.0.35.1'
  sha256 'ce9fc90a85dae0bc44b39c8ee18d42eceebb427093b33ee89ec14cc1674671f9'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: 'e05b5376aa51a23e29240fd9604bf192955d686ae4df8a0c9b0efa0e767912c3'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end

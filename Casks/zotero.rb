cask 'zotero' do
  version '5.0.34'
  sha256 '8e81a62b06e6d89b07395bb99a452539c412e7b199696a5a0181218fb4cf9bff'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: 'c513cf6f253c0dfe3c7e99bed72805cb0e3afccf37798f08d8bb499f0f5e9ad5'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end

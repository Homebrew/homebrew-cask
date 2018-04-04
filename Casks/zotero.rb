cask 'zotero' do
  version '5.0.43'
  sha256 '9de927a0aa5328fb9ab4f149601cb31aecbabfb45e7e48af8caddcec912c874f'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '470fbf8a6cf59fd57ab8cf9d13ecc966f827bd0484f8582249b34b09056bf36b'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end

cask 'zotero' do
  version '5.0.28'
  sha256 '4862459e3763cdcfe92d23f33175eacf25efaa02b1e93ce564c7fedb53afe753'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: 'ade6083e07e1c766fc77d76ac2cb5cb54111e5ac2d4496c9377a70a2b09f17a5'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end

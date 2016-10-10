cask 'zotero' do
  version '4.0.29.14'
  sha256 '9af1d5149fc3dcdc7a836112b024e311b5e325a071f512e6db8f005678cd4df9'

  url "https://download.zotero.org/standalone/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '676bc665177ff8a48e2b0afc7563ab11560f0159590d770a224bcc50386a91fe'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end

cask 'zotero' do
  version '5.0.31'
  sha256 '2bce8f23ac0a55a1166778e225f845d529028882a39e470ce5a6d5ec96ae74c5'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '6c54ed5945a2bad7a6206000de19c3575851e061138f5a833a2eef3cfd7ae02a'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end

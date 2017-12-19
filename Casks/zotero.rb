cask 'zotero' do
  version '5.0.32'
  sha256 '88153f98a52d3702c0f195415091aa5429678412dbe85075dd61edc07cc8959c'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '6c54ed5945a2bad7a6206000de19c3575851e061138f5a833a2eef3cfd7ae02a'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end

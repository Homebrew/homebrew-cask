cask 'zotero' do
  version '5.0.37'
  sha256 '1d16e09a64b9b48988e6f1c72b8642a721c1788cf89fc474a96d275672ec03be'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '9dea5763d67c720b2a36a6fcf666f55a966110b6e470dcaf6d761e7f8029b038'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end

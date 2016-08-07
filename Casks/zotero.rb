cask 'zotero' do
  version '4.0.29.5'
  sha256 '137766cf43c645f424f93c7a61f7c0cc163cb583002ffa45c8e00cacec175301'

  url "https://download.zotero.org/standalone/#{version}/Zotero-#{version}.dmg"
  name 'Zotero'
  homepage 'https://www.zotero.org/'
  license :affero

  app 'Zotero.app'
end

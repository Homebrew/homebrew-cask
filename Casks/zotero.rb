cask :v1 => 'zotero' do
  version '4.0.26.2'
  sha256 '7aeaf0997e27b23c7af2217275f80487e07d2988e814a9c35401e493b25cff14'

  url "https://download.zotero.org/standalone/#{version}/Zotero-#{version}.dmg"
  name 'Zotero'
  homepage 'https://www.zotero.org/'
  license :affero

  app 'Zotero.app'
end

cask :v1 => 'zotero' do
  version '4.0.27.7'
  sha256 'bb9b989f20638ca8f3e3250dfeed60ec46b254ed19fed6f70868bfdb790ae08c'

  url "https://download.zotero.org/standalone/#{version}/Zotero-#{version}.dmg"
  name 'Zotero'
  homepage 'https://www.zotero.org/'
  license :affero

  app 'Zotero.app'
end

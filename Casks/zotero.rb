class Zotero < Cask
  version '4.0.22'
  sha256 'add2d7541f610533f37f4a29fd999d0973c5587696359c864410ee3de60aa9b4'

  url "https://download.zotero.org/standalone/#{version}/Zotero-#{version}.dmg"
  homepage 'http://www.zotero.org/'
  license :affero

  app 'Zotero.app'
end

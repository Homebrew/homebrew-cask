cask 'tableau-reader' do
  version '10.5.3'
  sha256 '3b7b51506b10d97dacee71b5d668186f0d1b4d1cd1ef9eba0831c3a526e47918'

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'

  pkg 'Tableau Reader.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Reader.app',
                     ]
end

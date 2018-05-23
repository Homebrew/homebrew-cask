cask 'tableau-reader' do
  version '2018.1.0'
  sha256 '896d01a354869a0ba4997921dd13f6857f5014fc65df9cf5bd35ea09606a300a'

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'

  pkg 'Tableau Reader.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Reader.app',
                     ]
end

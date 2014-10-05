class TableauDesktop < Cask
  version :latest
  sha256 'fa7b0a40e415788324a1294e3bcca42a6abe8c2b8e07209672d92e305c5221fa'

  url 'https://downloads.tableausoftware.com/tssoftware/TableauDesktop.dmg'
  homepage 'http://www.tableausoftware.com/'
  license :commercial

  app 'Tableau.app'
end

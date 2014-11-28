cask :v1 => 'tableau' do
  version :latest
  sha256 :no_check

  url 'https://downloads.tableausoftware.com/tssoftware/TableauDesktop.dmg'
  homepage 'http://www.tableausoftware.com/'
  license :unknown

  app 'Tableau.app'
end

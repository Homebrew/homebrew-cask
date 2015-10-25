cask :v1 => 'tableau' do
  version :latest
  sha256 :no_check

  url 'https://downloads.tableausoftware.com/tssoftware/TableauDesktop.dmg'
  name 'Tableau'
  homepage 'https://www.tableausoftware.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tableau.app'
end

cask 'tableau-public' do
  version :latest
  sha256 :no_check

  url 'https://downloads.tableausoftware.com/public/TableauPublic.dmg'
  name 'Tableau Public'
  homepage 'https://www.tableausoftware.com/public'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tableau Public.app'
end

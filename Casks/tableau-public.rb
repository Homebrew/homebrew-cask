cask :v1 => 'tableau-public' do
  version :latest
  sha256 :no_check

  url 'https://downloads.tableausoftware.com/public/TableauPublic.dmg'
  homepage 'http://www.tableausoftware.com/public'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tableau Public.app'
end

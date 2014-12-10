cask :v1 => 'tableau-public' do
  version :latest
  sha256 :no_check

  url 'https://downloads.tableausoftware.com/public/TableauPublic.dmg'
  homepage 'http://www.tableausoftware.com/public'
  license :unknown    # todo: improve this machine-generated value

  app 'Tableau Public.app'
end

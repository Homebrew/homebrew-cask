cask 'tableau-public' do
  version '9.3'
  sha256 '3e489499d434c8d469a2333fbcbc1e776133bfeedca342e362b8da01b1f5eeba'

  url 'https://public.tableau.com/s/download/public/mac'
  name 'Tableau Public'
  homepage 'https://www.tableausoftware.com/public'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tableau Public.app'
end

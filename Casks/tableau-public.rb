class TableauPublic < Cask
  version :latest
  sha256 'b70947a8e9cbc8b9778a6f81acfbf5a569bb69b0c91d3cfdb0516a923b911409'

  url 'https://downloads.tableausoftware.com/public/TableauPublic.dmg'
  homepage 'http://www.tableausoftware.com/public'
  license :unknown

  app 'Tableau Public.app'
end

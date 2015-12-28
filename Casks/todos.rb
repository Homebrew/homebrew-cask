cask 'todos' do
  version :latest
  sha256 :no_check

  url 'http://dbachrach.com/opensoft/downloads/apps/Todos.dmg'
  appcast 'http://www.dbachrach.com/opensoft/appcasts/Todos.xml',
          :sha256 => 'fc76d9d409b3412188993473cde32eb51d36a5ebd3fdf8f786334272829bc055'
  name 'Todos'
  homepage 'http://dbachrach.com/opensoft/index.php?page=Todos'
  license :gpl

  app 'Todos.app'
end

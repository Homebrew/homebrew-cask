cask 'todos' do
  version :latest
  sha256 :no_check

  url 'http://dbachrach.com/opensoft/downloads/apps/Todos.dmg'
  appcast 'http://www.dbachrach.com/opensoft/appcasts/Todos.xml'
  name 'Todos'
  homepage 'http://dbachrach.com/opensoft/index.php?page=Todos'
  license :gpl

  app 'Todos.app'
end

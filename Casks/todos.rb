cask :v1 => 'todos' do
  version :latest
  sha256 :no_check

  url 'http://dbachrach.com/opensoft/downloads/apps/Todos.dmg'
  appcast 'http://www.dbachrach.com/opensoft/appcasts/Todos.xml'
  homepage 'http://dbachrach.com/opensoft/index.php?page=Todos'
  license :unknown

  app 'Todos.app'
end

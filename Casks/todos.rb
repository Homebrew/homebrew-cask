cask 'todos' do
  version :latest
  sha256 :no_check

  url 'http://dbachrach.com/opensoft/downloads/apps/Todos.dmg'
  appcast 'http://www.dbachrach.com/opensoft/appcasts/Todos.xml',
          :sha256 => '61c4f43c0984df5c3cadfc8fabc5de1f9582909fe52a65f97c7547f3399dc97e'
  name 'Todos'
  homepage 'http://dbachrach.com/opensoft/index.php?page=Todos'
  license :gpl

  app 'Todos.app'
end

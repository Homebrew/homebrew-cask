cask 'todos' do
  version '1.5'
  sha256 '8e5c41b6bf4d1865dd7a2768c72faa3642cd7eb3d93729247d0814ec9991e0d8'

  url 'http://dbachrach.com/opensoft/downloads/apps/Todos.dmg'
  appcast 'http://www.dbachrach.com/opensoft/appcasts/Todos.xml',
          checkpoint: '6b0d09ac933aca0f523010429969967a14035db46026702cb150b598443e5e3f'
  name 'Todos'
  homepage 'http://dbachrach.com/opensoft/index.php?page=Todos'
  license :gpl

  app 'Todos.app'
end

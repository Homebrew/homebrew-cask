cask 'trash-it' do
  if MacOS.version <= :snow_leopard
    version '5.2'
    sha256 '2428fcf10f8641488e1a43f8d64dfa7256129aab9813c1f841c72bf75f11c821'
    url "http://nonamescriptware.com/wp-content/uploads/TrashIt#{version.no_dots}.zip"
    app "TrashIt #{version}/Drag content to Desktop/Trash It!.app"
  else
    version :latest
    sha256 :no_check
    url 'http://nonamescriptware.com/wp-content/uploads/Trashit.zip'
    app "Trash It! #{version}/Drag content to Desktop/Trash It!.app"
  end
  appcast 'http://nonamescriptware.com/downloads/',
          checkpoint: '7a27f7d208c8fdb0e95a83e5981061714feb271e1ce611c4e765285471f75ada'
  name 'Trash It!'
  homepage 'http://nonamescriptware.com/'
end

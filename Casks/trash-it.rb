cask :v1 => 'trash-it' do
  if MacOS.release <= :leopard
    version '4.1'
    sha256 'a30ed22452d4c2fcefdbf2d892394524a3744ebd50fdcee2203ff705e648240e'
    url "http://nonamescriptware.com/wp-content/uploads/TrashIt#{version.gsub('.','')}.zip"
    app "TrashIt #{version}/Drag content to Desktop/Trash It!.app"
  else
    version '6.0.1'
    sha256 'c3a45b6f97a210502bc6adbb4f09329de2622ca9cdb999c40bddd55ed6c8f4db'
    url 'http://nonamescriptware.com/wp-content/uploads/Trashit.zip'
    app "Trash It! #{version}/Drag content to Desktop/Trash It!.app"
  end

  homepage 'http://nonamescriptware.com/'
  license :unknown    # todo: improve this machine-generated value
end

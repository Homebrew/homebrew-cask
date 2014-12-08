cask :v1 => 'trash-it' do

  if MacOS.version < :snow_leopard
    version '4.1'
    sha256 'a30ed22452d4c2fcefdbf2d892394524a3744ebd50fdcee2203ff705e648240e'
    url "http://nonamescriptware.com/wp-content/uploads/TrashIt#{version.gsub('.','')}.zip"
  else
    version :latest
    sha256 :no_check
    url 'http://nonamescriptware.com/wp-content/uploads/Trashit.zip'
  end

  homepage 'http://nonamescriptware.com/'
  license :unknown

  if MacOS.version < :snow_leopard
    app 'TrashIt 4.1/Drag content to Desktop/Trash It!.app'
  else
    app 'Trash It! 6.0.1/Drag content to Desktop/Trash It!.app'
  end
end

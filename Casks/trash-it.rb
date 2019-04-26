cask 'trash-it' do
  version '7.5'
  sha256 'b401adff30cd1110bfef7b14110aa097c8c1053c0ed92ab95506e2829cacd52c'

  url 'https://nonamescriptware.com/wp-content/uploads/Trashit.zip'
  appcast 'https://nonamescriptware.com/downloads/'
  name 'Trash It!'
  homepage 'https://nonamescriptware.com/'

  app "Trash It! #{version}/Trash It!.app"
end

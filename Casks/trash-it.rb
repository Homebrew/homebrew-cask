cask 'trash-it' do
  version '7.5'
  sha256 '0a8e6e0c389dd23df321d435d0e63f13899732896c135860ba7e3a4c55e887ea'

  url 'https://nonamescriptware.com/wp-content/uploads/Trashit.zip'
  appcast 'https://nonamescriptware.com/downloads/'
  name 'Trash It!'
  homepage 'https://nonamescriptware.com/'

  app "Trash It! #{version}/Trash It!.app"
end

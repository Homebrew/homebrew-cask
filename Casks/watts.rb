cask 'watts' do
  version :latest
  sha256 :no_check

  url 'https://binarytricks.com/watts2/public/Watts.app.tgz'
  appcast 'https://binarytricks.com/watts2/public/watts2appcast.xml'
  name 'Watts'
  homepage 'https://binarytricks.com/'

  app 'Watts.app'
end

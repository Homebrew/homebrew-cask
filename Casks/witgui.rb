cask 'witgui' do
  version '2.2.10'
  sha256 '5ebd626a9bacc631d208f8f1944c34f8329d7027ba3399c287e8729f3701be81'

  url "https://www.desairem.altervista.org/witgui/witgui-#{version}.zip"
  appcast 'https://desairem.altervista.org/witgui/appcast.xml'
  name 'Witgui'
  homepage 'https://desairem.altervista.org/wordpress/witgui/'

  app 'Witgui.app'
end

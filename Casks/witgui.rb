cask 'witgui' do
  version '2.2.10'
  sha256 '5ebd626a9bacc631d208f8f1944c34f8329d7027ba3399c287e8729f3701be81'

  url "http://desairem.altervista.org/witgui/download.php?version=#{version}"
  appcast 'http://desairem.altervista.org/witgui/appcast.xml',
          checkpoint: '13dcc2824f8a9ee76f3f2f18de46be91f72cfd619f8126a9f9f9fdb437ba44b3'
  name 'Witgui'
  homepage 'http://desairem.altervista.org/wordpress/witgui/'

  app 'Witgui.app'
end

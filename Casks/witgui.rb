cask 'witgui' do
  version '2.2.5'
  sha256 'b62ab17de12fc12fbf4dcbacfae5e4c86c7ea3073b3c43a26447914f13c57b39'

  url "http://desairem.altervista.org/witgui/download.php?version=#{version}"
  appcast 'http://desairem.altervista.org/witgui/appcast.xml',
          checkpoint: 'b5ca8f503372e8bd082eb4845b69e05d877f15543f21b8957e7bce97264f0e57'
  name 'Witgui'
  homepage 'http://desairem.altervista.org/wordpress/witgui/'

  app 'Witgui.app'
end

cask 'witgui' do
  version '2.2.7'
  sha256 '2c30472736110d77c9de26dea37fa1f695a15bcceca148d551a2ef9a9389970f'

  url "http://desairem.altervista.org/witgui/download.php?version=#{version}"
  appcast 'http://desairem.altervista.org/witgui/appcast.xml',
          checkpoint: '5f94e932722b7e10c080a3d6fb92f70fe88f0aa06d13a1bf3b22a53eba05d349'
  name 'Witgui'
  homepage 'http://desairem.altervista.org/wordpress/witgui/'

  app 'Witgui.app'
end

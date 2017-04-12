cask 'witgui' do
  version '2.2.6'
  sha256 'd147cf2d06623641a0e2b49bb5780e7f20a8da5d71e68aa067fad837dc678e8b'

  url "http://desairem.altervista.org/witgui/download.php?version=#{version}"
  appcast 'http://desairem.altervista.org/witgui/appcast.xml',
          checkpoint: '385d3a172a15b155e9ed72e5f41c14ed4c3d6cd696a978814e92c3d297eeb884'
  name 'Witgui'
  homepage 'http://desairem.altervista.org/wordpress/witgui/'

  app 'Witgui.app'
end

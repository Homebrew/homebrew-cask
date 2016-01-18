cask 'witgui' do
  version '2.2.3'
  sha256 '2d50c1701afc164120dbd09bbfe343a407a78469446e3e02524282189a3c68e2'

  url "http://desairem.altervista.org/witgui/download.php?version=#{version}"
  appcast 'http://desairem.altervista.org/witgui/appcast.xml',
          checkpoint: '082216a44fe8a9342cea14a3853831806309284dd01b5697e6dc13571ee9faf4'
  name 'Witgui'
  homepage 'http://desairem.altervista.org/witgui/wordpress/'
  license :gratis

  app 'Witgui.app'
end

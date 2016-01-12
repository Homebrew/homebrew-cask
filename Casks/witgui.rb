cask 'witgui' do
  version '2.2.3'
  sha256 '2d50c1701afc164120dbd09bbfe343a407a78469446e3e02524282189a3c68e2'

  url "http://desairem.altervista.org/witgui/download.php?version=#{version}"
  appcast 'http://desairem.altervista.org/witgui/appcast.xml',
          :sha256 => '3f253e5cbd3562ba446964fcfda1a812f5b5ef503036832422e2f0463e5259d0'
  name 'Witgui'
  homepage 'http://desairem.altervista.org/witgui/wordpress/'
  license :gratis

  app 'Witgui.app'
end

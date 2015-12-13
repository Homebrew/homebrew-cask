cask :v1 => 'witgui' do
  version '2.2.3'
  sha256 '2d50c1701afc164120dbd09bbfe343a407a78469446e3e02524282189a3c68e2'

  url "http://desairem.altervista.org/witgui/download.php?version=#{version}"
  name 'Witgui'
  appcast 'http://desairem.altervista.org/witgui/appcast.xml',
          :sha256 => 'a345b0c24c4e2c188e24c27dd98d0c9c14d48462fcc40c102e7226a5ebd89ce2'
  homepage 'http://desairem.altervista.org/witgui/wordpress/'
  license :gratis

  app 'Witgui.app'
end

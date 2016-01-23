cask 'witgui' do
  version '2.2.4'
  sha256 '79dac6b3d522cd05644ac5862c40592c3e0bceaccaa5fb8e46937e18ad408364'

  url "http://desairem.altervista.org/witgui/download.php?version=#{version}"
  appcast 'http://desairem.altervista.org/witgui/appcast.xml',
          checkpoint: '60bfccf453b99631b6a4aae66815564963269ebfb3e288fca34f42c9579af097'
  name 'Witgui'
  homepage 'http://desairem.altervista.org/witgui/wordpress/'
  license :gratis

  app 'Witgui.app'
end

cask :v1 => 'witgui' do
  version '2.1.5'
  sha256 '26cb3dab4f7805f5d48665c0478c488223083d164d1a9cf7dd27a96e172ffacd'

  url "http://desairem.altervista.org/witgui/download.php?version=#{version}"
  name 'Witgui'
  appcast 'http://desairem.altervista.org/witgui/appcast.xml',
          :sha256 => '2296729c95b01ea2eeae982672a3e156ae668e7df13c45650657a8fa9f834b0c'
  homepage 'http://desairem.altervista.org/witgui/wordpress/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Witgui.app'
end

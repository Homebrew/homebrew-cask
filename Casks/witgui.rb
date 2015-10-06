cask :v1 => 'witgui' do
  version '2.2.1'
  sha256 'c4714f9c689e113bee85bba56b4ec0e38eef7a84dbd7b168d69efdd493e992c4'

  url "http://desairem.altervista.org/witgui/download.php?version=#{version}"
  name 'Witgui'
  appcast 'http://desairem.altervista.org/witgui/appcast.xml',
          :sha256 => '6cac8130e4e785ebf497329b1fb01f43ef340bb619bc3115f623f1522f4a3166'
  homepage 'http://desairem.altervista.org/witgui/wordpress/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Witgui.app'
end

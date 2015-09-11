cask :v1 => 'witgui' do
  version '2.2.1'
  sha256 'c4714f9c689e113bee85bba56b4ec0e38eef7a84dbd7b168d69efdd493e992c4'

  url "http://desairem.altervista.org/witgui/download.php?version=#{version}"
  name 'Witgui'
  appcast 'http://desairem.altervista.org/witgui/appcast.xml',
          :sha256 => '00acad0f41df33566b4fca4ad153b0658bb864ecdafc298c5a5e972e74f4862f'
  homepage 'http://desairem.altervista.org/witgui/wordpress/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Witgui.app'
end

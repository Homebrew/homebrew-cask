cask :v1 => 'witgui' do
  version '2.2.2'
  sha256 '6f74c3ea43e24adad2da743963769671b096f329a883a35bd238ab217ad4d35d'

  url "http://desairem.altervista.org/witgui/download.php?version=#{version}"
  name 'Witgui'
  appcast 'http://desairem.altervista.org/witgui/appcast.xml',
          :sha256 => '6cac8130e4e785ebf497329b1fb01f43ef340bb619bc3115f623f1522f4a3166'
  homepage 'http://desairem.altervista.org/witgui/wordpress/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Witgui.app'
end

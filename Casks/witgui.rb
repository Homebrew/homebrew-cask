cask :v1 => 'witgui' do
  version '2.2'
  sha256 '8d9ecc3c858351ee45fff3864c313fbc0c065190396b511efff97182ae6d1cc6'

  url "http://desairem.altervista.org/witgui/download.php?version=#{version}"
  name 'Witgui'
  appcast 'http://desairem.altervista.org/witgui/appcast.xml',
          :sha256 => 'a82832283d430dd262b03f3ded8e617146ed8a1c21a889599d2cf23e583ba206'
  homepage 'http://desairem.altervista.org/witgui/wordpress/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Witgui.app'
end

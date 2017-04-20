cask 'yasu' do
  macos_release = MacOS.version

  if MacOS.version <= :el_capitan
    version '3.0.4,504'
    sha256 'f1bd1e48a2ff0e9839f4b21c651e89a4e18d8aa85a9b9fa8642f333ef5b0053b'
    url "https://yasuformac.com/appcasts/#{macos_release}/yasuformac_#{version.after_comma}.zip",
        user_agent: :fake
    appcast "https://yasuformac.com/appcasts/#{macos_release}/yasu.xml",
            checkpoint: 'd13bbaeca2a2c3610fa770ed3b2080fa040f525bbcc15c144d1802ecaf3ee487'
  else
    version '4.0.3,603'
    sha256 'aff402cdad7574e39705968f4ed2e35a05ef64260bf3cae85acf62d22e15f920'
    url "https://yasuformac.com/appcasts/#{macos_release}/yasuformac_#{version.after_comma}.zip",
        user_agent: :fake
    appcast "https://yasuformac.com/appcasts/#{macos_release}/yasu.xml",
            checkpoint: '26699f36f3b2d0b95d5c25342d6fae72ad6dceda732679718701223127b5e7ce'
  end

  name 'Yasu'
  homepage 'https://yasuformac.com/'

  depends_on macos: '>= :el_capitan'

  app 'Yasu for Mac.app'

  zap delete: [
                '~/Library/Caches/com.apple.helpd/Generated/net.yasuapp.yasu.help',
                '~/Library/Caches/net.yasuapp.yasu',
                '~/Library/Logs/Yasu.log',
                '~/Library/Preferences/net.yasuapp.yasu.plist',
                '~/Library/Preferences/org.jimmitchell.yasu.plist',
              ]
end

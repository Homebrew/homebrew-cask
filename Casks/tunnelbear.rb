cask 'tunnelbear' do
  version '2.5.8'
  sha256 '5c79dc8478572d4abbc8867e3badc0639a1f3468a8ca6e8f2bdeeb83453cd803'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          checkpoint: '544799b7dc65c96cfcc5ef0f92cbcfcdedb687e7570c25080aa9491c3352e0cd'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TunnelBear.app'

  postflight do
    suppress_move_to_applications
  end

  uninstall quit:      'com.tunnelbear.mac.TunnelBear',
            launchctl: 'com.tunnelbear.mac.tbeard'

  zap delete: '~/Library/Preferences/com.tunnelbear.mac.TunnelBear.plist'
end

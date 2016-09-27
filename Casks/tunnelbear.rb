cask 'tunnelbear' do
  version '3.0.2'
  sha256 '2be37c32f05322f5f1370a1ba5af306f71fefab8a7d32c983db25f156edac133'

  # tunnelbear.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          checkpoint: 'd95454250918704ea514c5723179462ace18f4bf15901dd44c640053e8e9bb71'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TunnelBear.app'

  postflight do
    suppress_move_to_applications
  end

  uninstall quit:      'com.tunnelbear.mac.TunnelBear',
            launchctl: 'com.tunnelbear.mac.tbeard'

  zap delete: [
                '~/Library/Preferences/com.tunnelbear.mac.TunnelBear.plist',
                '~/Library/Caches/com.tunnelbear.mac.TunnelBear',
              ]
end

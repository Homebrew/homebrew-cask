cask 'tunnelbear' do
  version '2.5.9'
  sha256 '469ac53e2ddefe2573a1231c22709a548ff8cb76ec4dae2cac02acacfac30316'

  # tunnelbear.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          checkpoint: '527f5dcf48d78bcb6c36f65df0a48fd03538be4c63bb6dff6b47823542a63432'
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

cask 'tunnelbear' do
  version '2.5.6'
  sha256 '28f77ee1387999d4deb82983b78ca825b9d1caab143a683af19df025333a0376'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          :sha256 => '9a437f3b3c02ce7947c7563ce9fa1f0f431d0f8fc00b398513e0f2d33312ae89'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TunnelBear.app'

  postflight do
    suppress_move_to_applications
  end
end

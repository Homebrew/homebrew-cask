cask :v1 => 'tunnelbear' do
  version '2.5.4'
  sha256 '2301246ce3cfc4ebb086335d60f75c9645c55b791238f4e7e0952cd5525d4ff8'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          :sha256 => '5af1d348d4d9411a831ac89b50f48132f8d247d8a175fb50b7076eca2b0d9637'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TunnelBear.app'

  postflight do
    suppress_move_to_applications
  end
end

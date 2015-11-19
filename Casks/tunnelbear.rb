cask :v1 => 'tunnelbear' do
  version '2.5.5'
  sha256 '5f5918dc46b9de9f130f16b884186098ee7b33f49b68dceff003657364ed333d'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          :sha256 => '3a901105de4ebbba94048c092f562f8eefdd178e20b21c43d541a9b63046a67e'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TunnelBear.app'

  postflight do
    suppress_move_to_applications
  end
end

cask :v1 => 'tunnelbear' do
  version '2.5.3'
  sha256 '8fd6cc05a2596f37fab1e822f002ff3c3c38b7bae2292c48035846f3d6e51d57'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          :sha256 => '70155552dc638acb62a9b4d81646271aaaa283347b99e695722791ef677fbd87'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TunnelBear.app'

  postflight do
    suppress_move_to_applications
  end
end

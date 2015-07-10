cask :v1 => 'tunnelbear' do
  version '2.5.2'
  sha256 '1ae3f205601e5a5b6bb5d93b870911e7ae5888186b76c9cd72dad6bcbb2d584b'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          :sha256 => '10c65ee5145cb3e8a50325c9ebad441984432b7c58120d0eee2d23be22c4535e'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TunnelBear.app'
end

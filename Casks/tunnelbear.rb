cask :v1 => 'tunnelbear' do
  version '2.5.1'
  sha256 '6790c18577bc04f3e0e7172769b03057317594d7d9989595754ef4a835e1d08b'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          :sha256 => '10c65ee5145cb3e8a50325c9ebad441984432b7c58120d0eee2d23be22c4535e'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TunnelBear.app'
end

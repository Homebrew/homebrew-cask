cask :v1 => 'tunnelbear' do
  version '2.4.7'
  sha256 '0aa7ff4d4af45b4863db9784bafb490bdb2c55cfa399d4cdc74d8aa42bf6d8ac'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          :sha256 => '69e4bf8982ecc871fd701062b35c7de265ebd76b8676256923cf7c6e1b1249a0'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TunnelBear.app'
end

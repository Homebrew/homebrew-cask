cask :v1 => 'tunnelbear' do
  version '2.4.5'
  sha256 '39d39d8f7801ef5d13787647919fb78f4f4669164002d9299b4b0fc7b2e4ccf5'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          :sha256 => '69e4bf8982ecc871fd701062b35c7de265ebd76b8676256923cf7c6e1b1249a0'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TunnelBear.app'
end

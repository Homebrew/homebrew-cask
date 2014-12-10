cask :v1 => 'tunnelbear' do
  version '2.4.4'
  sha256 '0b1e9798b6b395ce5ee9a7713ea2f57460226e76de131c76004d8e761e4eed92'

  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          :sha256 => '69e4bf8982ecc871fd701062b35c7de265ebd76b8676256923cf7c6e1b1249a0'
  homepage 'https://www.tunnelbear.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'TunnelBear.app'
end

cask :v1 => 'tunnelbear' do
  version '2.4.6'
  sha256 'd0722e486d79ee5006a87256ebf40209c08d0e04022f230e88c38f1cf639810b'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          :sha256 => '69e4bf8982ecc871fd701062b35c7de265ebd76b8676256923cf7c6e1b1249a0'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TunnelBear.app'
end

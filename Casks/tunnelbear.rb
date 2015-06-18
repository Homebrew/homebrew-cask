cask :v1 => 'tunnelbear' do
  version '2.5'
  sha256 'b363fd36a9c8c13bd42e1372a0c4403fd7eef3d27d3e876c52fcf07e955e29aa'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          :sha256 => '9ab024197af9828ad9e986a040b094eb856c23fa277129206f54021469454cf1'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TunnelBear.app'
end

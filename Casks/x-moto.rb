cask :v1 => 'x-moto' do
  version '0.5.10'
  sha256 '0b032d21fb0644db252fe9210f9c0a3f465616996aad6d50b20ead2123a3507a'

  url "http://download.tuxfamily.org/xmoto/xmoto/#{version}/xmoto-#{version}-macosx.zip"
  homepage 'http://xmoto.tuxfamily.org'
  license :unknown

  app 'X-Moto.app'
end

cask 'x-moto' do
  version '0.5.10'
  sha256 '0b032d21fb0644db252fe9210f9c0a3f465616996aad6d50b20ead2123a3507a'

  # download.tuxfamily.org was verified as official when first introduced to the cask
  url "https://download.tuxfamily.org/xmoto/xmoto/#{version}/xmoto-#{version}-macosx.zip"
  name 'XMoto'
  homepage 'https://xmoto.tuxfamily.org/'

  app 'X-Moto.app'
end

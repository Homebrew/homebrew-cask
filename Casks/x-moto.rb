cask 'x-moto' do
  version '0.5.10'
  sha256 '0b032d21fb0644db252fe9210f9c0a3f465616996aad6d50b20ead2123a3507a'

  # github.com/vasi/xmoto-build/releases/download was verified as official when first introduced to the cask
  url "https://github.com/vasi/xmoto-build/releases/download/v#{version}-r1/xmoto-#{version}-macosx.zip"
  appcast 'https://github.com/vasi/xmoto-build/releases.atom',
          checkpoint: '875e3da9790c98b94db17bf6d3f0d94dc0427a8fe6acfb02055652f075f2eb34'
  name 'XMoto'
  homepage 'https://xmoto.tuxfamily.org/'

  app 'X-Moto.app'
end

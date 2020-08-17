cask "x-moto" do
  version "0.5.10"
  sha256 "0b032d21fb0644db252fe9210f9c0a3f465616996aad6d50b20ead2123a3507a"

  # github.com/vasi/xmoto-build/ was verified as official when first introduced to the cask
  url "https://github.com/vasi/xmoto-build/releases/download/v#{version}-r1/xmoto-#{version}-macosx.zip"
  appcast "https://github.com/vasi/xmoto-build/releases.atom"
  name "XMoto"
  homepage "https://xmoto.tuxfamily.org/"

  app "X-Moto.app"
end

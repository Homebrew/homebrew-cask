cask 'zulu-mission-control' do
  version '7.0.0.49-ca'
  sha256 'b866690e9e95a5c0bd1b8bd40fc8658e3c602de06c5f50ba427ffb978341c923'

  url "https://static.azul.com/zmc/bin/zmc#{version}-macos_x64.tar.gz",
      referer: 'https://www.azul.com/products/zulu-mission-control/'
  name 'Zulu Mission Control'
  homepage 'https://www.azul.com/products/zulu-mission-control/'

  app "zmc#{version}-macos_x64/Zulu Mission Control.app"
end

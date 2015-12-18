cask 'zed' do
  version '1.1.0'
  sha256 '16b1660baeadb64a0e82ab57d0e2d5e09e3674d5d609f26b94a7f194881e3f35'

  url "http://download.zedapp.org/zed-mac-v#{version}.tar.gz"
  name 'Zed'
  homepage 'http://zedapp.org'
  license :oss

  app 'Zed.app'
end

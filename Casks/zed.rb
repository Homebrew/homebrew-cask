cask :v1 => 'zed' do
  version '1.0.0'
  sha256 '38adf6049be293b8fca425e7976f4d51d2aea296c5177110be8fc872f9fa76aa'

  url "http://download.zedapp.org/zed-mac-v#{version}.tar.gz"
  homepage 'http://zedapp.org'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Zed.app'
end

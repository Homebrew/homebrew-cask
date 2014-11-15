cask :v1 => 'unetbootin' do
  version '608'
  sha256 '6348a25607b08426759063a77719b208f3efef3cf0721c3dbcc521b32e6a5ad5'

  url "http://downloads.sourceforge.net/sourceforge/unetbootin/unetbootin-mac-#{version}.zip"
  homepage 'http://unetbootin.sourceforge.net/'
  license :oss

  app 'unetbootin.app'
end

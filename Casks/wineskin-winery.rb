cask :v1 => 'wineskin-winery' do
  version '1.7'
  sha256 'ef3ae1fe17a7bc622a59171985f304f506aea7ca0ad342281536dac8609eac32'

  url "https://downloads.sourceforge.net/project/wineskin/Wineskin%20Winery.app%20Version%20#{version}.zip"
  homepage 'http://wineskin.urgesoftware.com/'
  license :oss

  app 'Wineskin Winery.app'
end

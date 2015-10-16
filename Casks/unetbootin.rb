cask :v1 => 'unetbootin' do
  version '613'
  sha256 'b9356ad2ef3cfa6881690ddc1136c45e6d3f25063fdeaeeb477633500b0c7684'

  # launchpad.net is the official download host per the vendor homepage
  url "http://launchpad.net/unetbootin/trunk/#{version}/+download/unetbootin-mac-#{version}.zip"
  name 'UNetbootin'
  homepage 'http://unetbootin.github.io/'
  license :gpl

  app 'unetbootin.app'
end

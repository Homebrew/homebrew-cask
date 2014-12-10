cask :v1 => 'texturepacker' do
  version '3.3.1'
  sha256 '00f922d036bd7ec991bbe5ee5fcad1431c3c4884bc2b371fdff92cecdaa11339'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  homepage 'http://www.codeandweb.com/texturepacker'
  license :unknown    # todo: improve this machine-generated value

  app 'TexturePacker.app'
end

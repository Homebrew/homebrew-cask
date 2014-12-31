cask :v1 => 'texturepacker' do
  version '3.6.0'
  sha256 '4771b740335d38233547d68f6978684b7b6b3d9047385ed922037b035b254ae6'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  name 'TexturePacker'
  homepage 'http://www.codeandweb.com/texturepacker'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TexturePacker.app'
end

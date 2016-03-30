cask 'tag' do
  version '0.4.1'
  sha256 '165631a76db33cbe5200ff64a64f5e1dad6606ae815c7609d59b7367f9344360'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/tagosx/Tag-#{version}.zip"
  name 'Tag'
  homepage 'http://sbooth.org/Tag/'
  license :gpl

  app "Tag-#{version}/Tag.app"
end

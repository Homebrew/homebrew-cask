cask 'tag' do
  version '0.4.1'
  sha256 '165631a76db33cbe5200ff64a64f5e1dad6606ae815c7609d59b7367f9344360'

  # sourceforge.net/tagosx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/tagosx/Tag-#{version}.zip"
  appcast 'https://sourceforge.net/projects/tagosx/rss',
          checkpoint: '544af180ce40d5fbad6d71da91f6451c499652a46cd717f5589460fe4ecfa530'
  name 'Tag'
  homepage 'https://sbooth.org/Tag/'

  app "Tag-#{version}/Tag.app"
end

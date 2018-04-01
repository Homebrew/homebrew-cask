cask 'thonny' do
  version '2.1.13'
  sha256 'bd3e162d5e95c50adae290565ad60e468f8d65e93e811aba9778033dd799021f'

  # bitbucket.org/plas/thonny/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/plas/thonny/downloads/thonny-#{version}.dmg"
  appcast 'http://thonny.org/blog/categories/releases.html',
          checkpoint: 'b5f3b66d7bbcd46a4b5b880e1e167c7dced47afa7bc14d4ff8f4a553a7776e00'
  name 'Thonny'
  homepage 'http://thonny.org/'

  app 'Thonny.app'

  zap trash: '~/.thonny'
end

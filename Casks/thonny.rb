cask 'thonny' do
  version '2.1.11'
  sha256 '346d5ba542d37ece44732c4b438ba0b45bc5e4323e251892457ceef4bb777ac4'

  # bitbucket.org/plas/thonny/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/plas/thonny/downloads/thonny-#{version}.dmg"
  appcast 'http://thonny.org/blog/categories/releases.html',
          checkpoint: 'eb0fb54be52ef849e2a5b7e69ef161d15b699b85e4535e4be491cbe39b7491f1'
  name 'Thonny'
  homepage 'http://thonny.org/'

  app 'Thonny.app'

  zap trash: '~/.thonny'
end

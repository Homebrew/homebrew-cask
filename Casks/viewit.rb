cask 'viewit' do
  version '2.61'
  sha256 '4689dfa7c25f65acef8104920c94b61172170c44af349ce8e6cc23f63feb0d14'

  url "http://www.hexcat.com/downloads/ViewIt-#{version}.zip"
  appcast 'http://www.hexcat.com/downloads.html',
          checkpoint: '2dcb52ec50517c76cbe5ed8cc87f71f5222b3734e18cc02353e4efa502faafe8'
  name 'ViewIt'
  homepage 'http://www.hexcat.com/viewit/'

  app 'ViewIt.app'
end

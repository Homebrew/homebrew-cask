cask 'viewit' do
  version '2.62'
  sha256 'fe1a19f6ff6a714d07255a0968810d309c63daa68dcded5e5f0017c7b38f5728'

  url "http://www.hexcat.com/downloads/ViewIt-#{version}.zip"
  appcast 'http://www.hexcat.com/downloads.html',
          checkpoint: '0d3fb4664613e977b6a1d4aa94fc13056c8df51e8c7b1b50ad4ef9238aba8beb'
  name 'ViewIt'
  homepage 'http://www.hexcat.com/viewit/'

  app 'ViewIt.app'
end

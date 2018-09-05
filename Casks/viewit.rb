cask 'viewit' do
  version '2.66'
  sha256 '5f4d5da68212d4076f0472ed80c01e1ff4572385cf1313e995bb5c139397b841'

  url "http://www.hexcat.com/downloads/ViewIt-#{version}.zip"
  appcast 'http://www.hexcat.com/downloads.html'
  name 'ViewIt'
  homepage 'http://www.hexcat.com/viewit/'

  app 'ViewIt.app'
end

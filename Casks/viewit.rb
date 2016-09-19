cask 'viewit' do
  version '2.58'
  sha256 '96e62c74b64418d2bee57070b3d07b51e60601f24b6bc1be9aa63d70cf96f596'

  url "http://www.hexcat.com/downloads/ViewIt-#{version}.zip"
  name 'ViewIt'
  homepage 'http://www.hexcat.com/viewit/'
  license :commercial

  app 'ViewIt.app'
end

cask 'wowmatrix' do
  version :latest
  sha256 :no_check

  url 'http://swupdate.wowmatrix.com/mac/WowMatrix.zip'
  name 'WowMatrix'
  homepage 'https://www.wowmatrix.com/'

  app 'WowMatrix.app'
end

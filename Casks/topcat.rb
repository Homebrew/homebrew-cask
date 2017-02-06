cask 'topcat' do
  version :latest
  sha256 :no_check

  url 'http://www.star.bris.ac.uk/~mbt/topcat/topcat-full.dmg'
  name 'TOPCAT'
  homepage 'http://www.star.bris.ac.uk/~mbt/topcat/'

  app 'TOPCAT.app'
end

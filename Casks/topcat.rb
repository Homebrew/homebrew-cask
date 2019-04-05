cask 'topcat' do
  version '4.6-2'
  sha256 '010cf7f23a75a1831f26cfe176a6e998007b8a90b10d9b34c058905705822d4e'

  url 'http://www.star.bris.ac.uk/~mbt/topcat/topcat-full.dmg'
  appcast 'http://www.star.bris.ac.uk/~mbt/topcat/sun253/versions.html'
  name 'TOPCAT'
  homepage 'http://www.star.bris.ac.uk/~mbt/topcat/'

  app 'TOPCAT.app'
  binary "#{appdir}/TOPCAT.app/Contents/Resources/bin/topcat"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/bin/stilts"
end

cask 'topcat' do
  version '4.6-3'
  sha256 '785181316cbb4083764d0b30a7518b30003861cd3c9401bf83e1c14a76b481a4'

  url 'http://www.star.bris.ac.uk/~mbt/topcat/topcat-full.dmg'
  appcast 'http://www.star.bris.ac.uk/~mbt/topcat/sun253/versions.html'
  name 'TOPCAT'
  homepage 'http://www.star.bris.ac.uk/~mbt/topcat/'

  app 'TOPCAT.app'
  binary "#{appdir}/TOPCAT.app/Contents/Resources/bin/topcat"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/bin/stilts"
end

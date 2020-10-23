cask "topcat" do
  version "4.7-3"
  sha256 "e8f6d5b8c948d311298e1d1a5ea8af38800a5bc8144fbea8b83ea3a2c1715a0b"

  url "http://www.star.bris.ac.uk/~mbt/topcat/topcat-full.dmg"
  appcast "http://www.star.bris.ac.uk/~mbt/topcat/sun253/versions.html"
  name "TOPCAT"
  homepage "http://www.star.bris.ac.uk/~mbt/topcat/"

  app "TOPCAT.app"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/bin/topcat"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/bin/stilts"
end

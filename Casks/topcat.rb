cask "topcat" do
  version "4.7-2"
  sha256 "6711804cf1e1aaa5ea8d37545c1ce65f3a6b4525d6c3c8f072a74348f2ea2e1f"

  url "http://www.star.bris.ac.uk/~mbt/topcat/topcat-full.dmg"
  appcast "http://www.star.bris.ac.uk/~mbt/topcat/sun253/versions.html"
  name "TOPCAT"
  homepage "http://www.star.bris.ac.uk/~mbt/topcat/"

  app "TOPCAT.app"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/bin/topcat"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/bin/stilts"
end

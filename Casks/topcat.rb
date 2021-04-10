cask "topcat" do
  version "4.8"
  sha256 :no_check

  url "http://www.star.bris.ac.uk/~mbt/topcat/topcat-full.dmg"
  appcast "http://www.star.bris.ac.uk/~mbt/topcat/sun253/versions.html"
  name "TOPCAT"
  homepage "http://www.star.bris.ac.uk/~mbt/topcat/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Version\s*(\d+(?:\.\d+)*)/i)
  end

  app "TOPCAT.app"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/bin/topcat"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/bin/stilts"
end

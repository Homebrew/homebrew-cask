cask "topcat" do
  version "4.8-8"
  sha256 :no_check

  url "http://www.starlink.ac.uk/topcat/topcat-full.dmg"
  name "TOPCAT"
  desc "Interactive graphical viewer and editor for tabular data"
  homepage "http://www.starlink.ac.uk/topcat/"

  livecheck do
    url :homepage
    regex(/Version\s*(\d+(?:\.\d+)*(?:-\d+)?)\s*released/i)
  end

  app "TOPCAT.app"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/bin/topcat"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/bin/stilts"

  # No zap stanza required

  caveats do
    depends_on_java "8+"
  end
end

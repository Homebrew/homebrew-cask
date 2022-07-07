cask "understand" do
  version "6.2.1108"
  sha256 "605f48bcc54b3abd549932c22eae0870d4cacaa3897439750efdcf34c25f96df"

  url "https://latest.scitools.com/Understand/Understand-#{version}-MacOSX-x86.dmg"
  name "SciTools Understand"
  desc "Code visualization and exploration tool"
  homepage "https://scitools.com/features/"

  livecheck do
    url "https://licensing.scitools.com/download/thanks/MacOSX-x86.dmg"
    regex(/Understand[._-]v?(\d+(?:\.\d+)+)[._-]MacOSX[._-]x86\.dmg/i)
  end

  app "Understand.app"
end

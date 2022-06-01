cask "understand" do
  version "6.2.1103"
  sha256 "7964631da2739b5843a1da0920270f087e1b87f810fd4cd9ac10ba589bd2b104"

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

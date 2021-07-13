cask "understand" do
  version "6.0.1073"
  sha256 "146676ab751986ded1546953835211cfa0c8d6423ceba7fbc0411c6d5aeacb44"

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  name "SciTools Understand"
  desc "Code visualization and exploration tool"
  homepage "https://scitools.com/features/"

  livecheck do
    url "https://licensing.scitools.com/download"
    regex(/stablefilepaths=["'][^"']*?Understand[._-]v?(\d+(?:\.\d+)+)[._-]MacOSX[._-]x86\.dmg/i)
  end

  app "Understand.app"
end

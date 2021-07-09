cask "understand" do
  version "6.0.1070"
  sha256 "d03b05492b623c1ad0861c862dbf0d0cf9329e7d5b83afa96c54a24c2dc017ab"

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

cask "understand" do
  version "5.1.1029"
  sha256 "1ed79219c267d2da77efabeedfcbd790b2c4475bf3eedf4b0395426a47961d4e"

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast "https://scitools.com/download/all-builds/"
  name "SciTools Understand"
  homepage "https://scitools.com/features/"

  app "Understand.app"
end

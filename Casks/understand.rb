cask "understand" do
  version "6.0.1039"
  sha256 "105bd39a2168cb35f5c27d47b2f98535c07a6b9abccc7958f1d519b7148aa8d8"

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast "https://scitools.com/download/all-builds/"
  name "SciTools Understand"
  desc "Code visualization and exploration tools"
  homepage "https://scitools.com/features/"

  app "Understand.app"
end

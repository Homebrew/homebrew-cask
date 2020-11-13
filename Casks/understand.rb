cask "understand" do
  version "6.0.1041"
  sha256 "27fad4d35a398c8e0ab9b4c4ac4651211cbaf7fc6311fcedb816cfbc65d21971"

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast "https://scitools.com/download/all-builds/"
  name "SciTools Understand"
  homepage "https://scitools.com/features/"

  app "Understand.app"
end

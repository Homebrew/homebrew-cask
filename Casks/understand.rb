cask "understand" do
  version "6.0.1050"
  sha256 "7438196f90ad0d83f160172a5d6929cece6a856c33ee1a96a606d92f2888a9b2"

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast "https://scitools.com/download/all-builds/"
  name "SciTools Understand"
  homepage "https://scitools.com/features/"

  app "Understand.app"
end

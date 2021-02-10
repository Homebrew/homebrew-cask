cask "understand" do
  version "6.0.1050"
  sha256 "7438196f90ad0d83f160172a5d6929cece6a856c33ee1a96a606d92f2888a9b2"

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast "https://licensing.scitools.com/download/getChecksums/Understand/#{version.patch}"
  name "SciTools Understand"
  desc "Code visualization and exploration tool"
  homepage "https://scitools.com/features/"

  app "Understand.app"
end

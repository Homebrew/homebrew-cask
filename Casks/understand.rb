cask "understand" do
  version "6.0.1063"
  sha256 "542cbef81f846767105d6e971cff226087b34f938f60267cc5ad65a0bed5a99c"

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast "https://licensing.scitools.com/download/getChecksums/Understand/#{version.patch}"
  name "SciTools Understand"
  desc "Code visualization and exploration tool"
  homepage "https://scitools.com/features/"

  app "Understand.app"
end

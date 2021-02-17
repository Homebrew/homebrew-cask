cask "understand" do
  version "6.0.1053"
  sha256 "cbd5bce42e600e15dfb10100a88cef21fe99d97fe19c81812d123a0fd604f597"

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast "https://licensing.scitools.com/download/getChecksums/Understand/#{version.patch}"
  name "SciTools Understand"
  desc "Code visualization and exploration tool"
  homepage "https://scitools.com/features/"

  app "Understand.app"
end

cask "understand" do
  version "6.0.1056"
  sha256 "bc6186e3530e9adc0cd17ae81ebab375fec16e5221f69c37c18c3bac6623d724"

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast "https://licensing.scitools.com/download/getChecksums/Understand/#{version.patch}"
  name "SciTools Understand"
  desc "Code visualization and exploration tool"
  homepage "https://scitools.com/features/"

  app "Understand.app"
end

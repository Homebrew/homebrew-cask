cask "vrep" do
  version "3.6.0"
  sha256 "6d028ec84112fc85518c6a5298d70c651eadc9267d300f10502ea593817f8f78"

  url "https://coppeliarobotics.com/files/V-REP_PRO_EDU_V#{version.dots_to_underscores}_Mac.zip"
  appcast "https://www.coppeliarobotics.com/helpFiles/en/versionInfo.htm"
  name "V-REP"
  homepage "https://www.coppeliarobotics.com/index.html"

  suite "V-REP_PRO_EDU_V#{version.dots_to_underscores}_Mac"
end

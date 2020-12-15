cask "vuescan" do
  version "9.7.37"
  sha256 :no_check

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast "https://www.hamrick.com/vuescan/vuescan.htm"
  name "VueScan"
  desc "App that provides drivers for older model scanners that are no longer supported"
  homepage "https://www.hamrick.com/"

  app "VueScan.app"
end

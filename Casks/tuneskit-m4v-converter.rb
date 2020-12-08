cask "tuneskit-m4v-converter" do
  version "5.1.0"
  sha256 :no_check

  url "https://www.tuneskit.com/TunesKitforMac.dmg"
  appcast "https://www.tuneskit.com/api/product/version?pid=201"
  name "TunesKit M4V Converter"
  homepage "https://www.tuneskit.com/"

  app "TunesKit M4V Converter.app"
end

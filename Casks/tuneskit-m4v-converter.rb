cask "tuneskit-m4v-converter" do
  version "5.1.0.25"
  sha256 :no_check

  url "https://www.tuneskit.com/TunesKitforMac.dmg"
  appcast "https://www.tuneskit.com/api/product/version?pid=201",
          must_contain: version.major_minor_patch
  name "TunesKit M4V Converter"
  homepage "https://www.tuneskit.com/"

  app "TunesKit M4V Converter.app"
end

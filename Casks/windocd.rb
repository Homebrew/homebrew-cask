cask "windocd" do
  version "1.7.4"
  sha256 "72d5b9fd9b2e20245dbe7c1fb60d41982c725485901e002676ba00945ce91b2e"

  # download.moapp.software/ was verified as official when first introduced to the cask
  url "https://download.moapp.software/windOCD.zip"
  appcast "https://sparkle.moapp.software/windocd.xml"
  name "windOCD"
  homepage "https://windocd.myownapp.com/"

  depends_on macos: ">= :mojave"

  app "windOCD.app"

  zap trash: [
    "~/Library/Application Support/windOCD",
    "~/Library/Caches/com.myownapp.windOCD",
    "~/Library/Preferences/com.myownapp.windOCD.plist",
  ]
end

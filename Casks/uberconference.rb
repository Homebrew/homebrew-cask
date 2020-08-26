cask "uberconference" do
  version "2.2.2"
  sha256 "3c9d39c239aca2e292d17221656bcd20347bbfaabaaa777c76e92e7ab80dfff2"

  # See https://help.uberconference.com/hc/en-us/articles/360033352091-Use-the-Desktop-App
  # storage.googleapis.com/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/uc_native/osx/UberConference.#{version}.zip"
  appcast "https://www.uberconference.com/api/i1/native/checkversion/darwin/x64/0?channel=stable"
  name "UberConference"
  homepage "https://www.uberconference.com/"

  app "UberConference.app"

  uninstall quit: "com.electron.uberconference"

  zap trash: [
    "~/Library/Application Support/UberConference",
    "~/Library/Caches/com.electron.uberconference",
    "~/Library/Caches/com.electron.uberconference.ShipIt",
    "~/Library/Cookies/com.electron.uberconference.binarycookies",
    "~/Library/Preferences/com.electron.uberconference.plist",
    "~/Library/Saved Application State/com.electron.uberconference.savedState",
  ]
end

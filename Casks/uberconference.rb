cask "uberconference" do
  version "3.0.1"
  sha256 "f6ef5b6209d91a1dc391c9044d5f83711827f2a8bd975f0455742756f0f0252b"

  # See https://help.uberconference.com/hc/en-us/articles/360033352091-Use-the-Desktop-App
  url "https://storage.googleapis.com/uc_native/osx/UberConference.#{version}.zip",
      verified: "storage.googleapis.com/"
  name "Dialpad UberConference"
  desc "Video conferencing"
  homepage "https://www.uberconference.com/"

  livecheck do
    url "https://www.uberconference.com/api/i1/native/checkversion/darwin/x64/0?channel=stable"
    regex(/"version"\s*:\s*"v?(\d+(?:\.\d+)+)"/i)
  end

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

cask "unite-phone" do
  version "2025.12.4"
  sha256 "070af9bec214f12d56d807585262aa0cac4e9ae99201d13529bdc779a72ed101"

  url "https://update.unitephone.nl/updates/unite_phone-#{version}-universal-mac.zip",
      referer: "https://unitephone.nl/unitephone-app/macos"
  name "Unite Phone"
  desc "Video and voice calling application"
  homepage "https://unitephone.nl/"

  livecheck do
    url "https://unitephone.nl/unitephone-app/macos"
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  app "Unite Phone.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Unite Phone Helper*",
    "~/Library/Application Support/Unite Phone",
  ]
end

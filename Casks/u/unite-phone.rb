cask "unite-phone" do
  version "2025.12.4"
  sha256 :no_check

  url "https://unitephone.nl/unitephone-app/macos",
      user_agent: :fake
  name "Unite Phone"
  desc "Video and voice calling application"
  homepage "https://unitephone.nl/"

  livecheck do
    url :url
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  app "Unite Phone.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Unite Phone Helper*",
    "~/Library/Application Support/Unite Phone",
  ]
end

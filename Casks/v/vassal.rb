cask "vassal" do
  version "3.7.23"
  sha256 "4c5f98851bda3e66ced85aff9bd24e2f1ea1e31bd0e8f09b91fcd5f3868cb775"

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos-universal.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Board game engine"
  homepage "https://www.vassalengine.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "VASSAL.app"

  zap trash: "~/Library/Application Support/VASSAL"
end

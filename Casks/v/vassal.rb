cask "vassal" do
  version "3.7.25"
  sha256 "e29e5be9a69011564fc95006753cbe3ed8ab2e50828319bebc76e8e775f3e739"

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

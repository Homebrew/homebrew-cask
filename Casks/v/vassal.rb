cask "vassal" do
  version "3.7.24"
  sha256 "b94d98bffc55da9338ace9bbf213080ce03158a5b8de9b5d2fe925f6437d9a9b"

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

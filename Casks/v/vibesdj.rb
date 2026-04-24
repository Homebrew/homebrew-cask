cask "vibesdj" do
  version "0.10.3"
  sha256 "be75708d6397ec9e4f1993c115425f17d94db4a97bf7c716e0b1dd5d73e7ef5b"

  url "https://github.com/benmdg/vibes-releases/releases/download/v#{version}/Vibes_#{version}_aarch64.dmg",
      verified: "github.com/benmdg/vibes-releases/"
  name "Vibes"
  desc "DJ library organizer that sorts tracks by mood, energy, and technique"
  homepage "https://vibesdj.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Vibes.app"

  zap trash: [
    "~/Library/Application Support/com.benmdg.vibes",
    "~/Library/Caches/com.benmdg.vibes",
    "~/Library/Logs/com.benmdg.vibes",
    "~/Library/Preferences/com.benmdg.vibes.plist",
    "~/Library/Saved Application State/com.benmdg.vibes.savedState",
  ]
end

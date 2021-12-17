cask "valkyrie" do
  version "2.5.6"
  sha256 "6b73e8f9eb7fca202feea27545163d08d237ea1b23289716a1d4d0928f392c0d"

  url "https://github.com/NPBruce/valkyrie/releases/download/release/#{version.major_minor}/v#{version}/valkyrie-macos-#{version}.tar.gz",
      verified: "github.com/NPBruce/valkyrie"
  name "Valkyrie"
  desc "Game Master for Fantasy Flight board games"
  homepage "https://npbruce.github.io/valkyrie/"

  livecheck do
    url :url
    regex(%r{/v(\d+(?:\.\d+)+)$}i)
  end

  app "Valkyrie.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Valkyrie_*.plist",
    "~/Library/Preferences/unity.NA.Valkyrie.plist",
    "~/Library/Saved Application State/unity.NA.Valkyrie.savedState",
  ]
end

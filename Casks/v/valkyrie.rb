cask "valkyrie" do
  version "2.6.0"
  sha256 "0aaa7435012fdae6f39b88f7cbbc9a179c992acd068d4ae6539fd973e0aa17a6"

  url "https://github.com/NPBruce/valkyrie/releases/download/release/#{version.major_minor}/#{version}/valkyrie-macos-#{version}.tar.gz",
      verified: "github.com/NPBruce/valkyrie/"
  name "Valkyrie"
  desc "Game Master for Fantasy Flight board games"
  homepage "https://npbruce.github.io/valkyrie/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)$}i)
  end

  app "Valkyrie.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Valkyrie_*.plist",
    "~/Library/Preferences/unity.NA.Valkyrie.plist",
    "~/Library/Saved Application State/unity.NA.Valkyrie.savedState",
  ]
end

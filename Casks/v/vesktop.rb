cask "vesktop" do
  arch arm: "-arm64", intel: ""

  version "1.5.2"
  sha256 arm:   "37dab286677c3a07d3488631be6d3112159e5ab16641737a3dbbfb1b77eb286a",
         intel: "feed86e6ff7cf850087e0ed432ae6f5059983b64e3e5988068badda9474e300a"

  url "https://github.com/Vencord/Vesktop/releases/download/#{version}/Vesktop-#{version}#{arch}.dmg",
      verified: "github.com/Vencord/Vesktop/"
  name "Vesktop"
  desc "A custom Discord desktop app"
  homepage "https://github.com/Vencord/Vesktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  # auto_updates true
  # depends_on macos: ">= :catalina"

  app "Vesktop.app"

  zap trash: [
    "~/Library/Preferences/dev.vencord.vesktop.plist",
        "~/Library/Saved Application State/dev.vencord.vesktop.savedState",
        "~/Library/Application Support/vesktop",
  ]
end

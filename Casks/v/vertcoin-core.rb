cask "vertcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "23.2"
  sha256 arm:   "c83810e10bccfb5af29d8209a15a2b28e901834ba86366bece2994c89db733ad",
         intel: "38ae781c773ddefe0f91ac7a5474ebe8feb3ef095780da8776fc79b4f5918170"

  url "https://github.com/vertcoin-project/vertcoin-core/releases/download/v#{version}/vertcoin-#{version}-#{arch}-apple-darwin.dmg",
      verified: "github.com/vertcoin-project/vertcoin-core/"
  name "Vertcoin Core"
  desc "Vertcoin client and wallet"
  homepage "https://vertcoin.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Vertcoin-Qt.app", target: "Vertcoin Core.app"

  preflight do
    set_permissions "#{staged_path}/Vertcoin-Qt.app", "0755"
  end

  zap trash: "~/Library/Preferences/org.vertcoin.Vertcoin-Qt.plist"
end

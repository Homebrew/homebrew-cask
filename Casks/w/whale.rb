cask "whale" do
  arch arm: "-arm64"

  on_arm do
    version "3.0.0"
    sha256 "80696c337b94274b5acd053d668dfc54d7fa608ee293470a3804e0ab285f8a5a"

    depends_on macos: :monterey
  end
  on_intel do
    version "2.4.0"
    sha256 "63857d17bf6d44c65215d729870737a17153f33c01605dc093626b7185731b02"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: :catalina
  end

  url "https://github.com/1000ch/whale/releases/download/v#{version}/Whale-#{version}#{arch}.dmg"
  name "Whale"
  desc "Unofficial Trello app"
  homepage "https://github.com/1000ch/whale"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "Whale.app"

  zap trash: [
    "~/Library/Application Support/Whale",
    "~/Library/Caches/net.1000ch.whale",
    "~/Library/Caches/net.1000ch.whale.ShipIt",
    "~/Library/Preferences/net.1000ch.whale.helper.plist",
    "~/Library/Preferences/net.1000ch.whale.plist",
    "~/Library/Saved Application State/net.1000ch.whale.savedState",
  ]
end

cask "toontown-rewritten" do
  version "1.2.5,1.2.5"
  sha256 :no_check

  url "https://cdn.toontownrewritten.com/launcher/mac/Toontown%20Rewritten.dmg"
  name "Toontown Rewritten"
  name "Toontown Launcher"
  homepage "https://www.toontownrewritten.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/8037
  app "Toontown Launcher.app", target: "Toontown Rewritten.app"
end

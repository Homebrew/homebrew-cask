cask "toontown-rewritten" do
  version "1.2.5"
  sha256 "ed7bd2c60e582cd2a6d51d6188a78d371fe05772e63447cdcf0ca3afa5f4fefb"

  url "https://cdn.toontownrewritten.com/launcher/mac/updates/#{version}/ttr_launcher_#{version}.zip"
  name "Toontown Rewritten"
  name "Toontown Launcher"
  homepage "https://www.toontownrewritten.com/"

  livecheck do
    url "https://www.toontownrewritten.com/play"
    strategy :page_match
    regex(%r{href=.*?/ttr_launcher_(\d+(?:\.\d+)*)\.zip}i)
  end

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/8037
  app "Toontown Launcher.app", target: "Toontown Rewritten.app"
end

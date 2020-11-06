cask "toontown-rewritten" do
  version "1.2.4"
  sha256 "56cd2178be0ea7a1c49ba688c9da2d1f0b1644cd41f1343d15e6e770576beba4"

  url "https://cdn.toontownrewritten.com/launcher/mac/updates/#{version}/ttr_launcher_#{version}.zip"
  appcast "https://www.toontownrewritten.com/play"
  name "Toontown Rewritten"
  name "Toontown Launcher"
  homepage "https://www.toontownrewritten.com/"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/8037
  app "Toontown Launcher.app", target: "Toontown Rewritten.app"
end

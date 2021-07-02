cask "tales-of-majeyal" do
  version "1.7.4"
  sha256 "287aa14e56ac0a90f1a6b085bfe0dcf1ea346db8ac8317249bfab24c642a3af2"

  url "https://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  name "Tales of Maj'Eyal"
  desc "Topdown tactical RPG roguelike game and game engine"
  homepage "https://te4.org/"

  livecheck do
    url "https://te4.org/download"
    regex(/href=.*?t-engine4[._-]osx[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  # Renamed for clarity: app name is inconsistent with its branding.
  app "T-Engine.app", target: "Tales-of-Maj'Eyal.app"
end

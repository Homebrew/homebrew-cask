cask "tales-of-majeyal" do
  version "1.7.3"
  sha256 "8243d094c70ee8880433df312f9527da8fb30ce470fdde323d9a5ebe932cd88a"

  url "https://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  name "Tales of Maj'Eyal"
  desc "Topdown tactical RPG roguelike game"
  homepage "https://te4.org/"

  livecheck do
    url "https://te4.org/download"
    regex(%r{href=.*?/t-engine4-osx[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  # Renamed for clarity: app name is inconsistent with its branding.
  app "T-Engine.app", target: "Tales-of-Maj'Eyal.app"
end

cask "tales-of-majeyal" do
  version "1.6.7"
  sha256 "da0c3a2d6d48ec29ad2b8c1c44478258ac1d19b8931965a380984eaa3675b5c6"

  url "https://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  appcast "https://te4.org/download"
  name "Tales of Maj'Eyal"
  homepage "https://te4.org/"

  # Renamed for clarity: app name is inconsistent with its branding.
  app "T-Engine.app", target: "Tales-of-Maj'Eyal.app"
end

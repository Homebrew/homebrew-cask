cask "tales-of-majeyal" do
  version "1.7.0"
  sha256 "af3a11519464e17f22939ce67e3430e34304e0648ddd646d8bbcddd43aac188f"

  url "https://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  appcast "https://te4.org/download"
  name "Tales of Maj'Eyal"
  homepage "https://te4.org/"

  # Renamed for clarity: app name is inconsistent with its branding.
  app "T-Engine.app", target: "Tales-of-Maj'Eyal.app"
end

cask "tales-of-majeyal" do
  version "1.7.2"
  sha256 "e9bd5dfc297a5b201e3332cc73f3ebcf96c8b1dee8bb750082a087631fe5be10"

  url "https://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  name "Tales of Maj'Eyal"
  homepage "https://te4.org/"

  livecheck do
    url "https://te4.org/download"
    strategy :page_match
    regex(%r{href=.*?/t-engine4-osx-(\d+(?:\.\d+)*)\.zip}i)
  end

  # Renamed for clarity: app name is inconsistent with its branding.
  app "T-Engine.app", target: "Tales-of-Maj'Eyal.app"
end

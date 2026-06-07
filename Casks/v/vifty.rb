cask "vifty" do
  version "1.0.0"
  sha256 "5b3d6c67acfb7833e71edeb250d238b7c8c362285189e118278fc5bd350cd884"

  url "https://github.com/Reedtrullz/Vifty/releases/download/v#{version}/Vifty-v#{version}.zip"
  name "Vifty"
  desc "Menu-bar fan control and power monitor for MacBook Pro"
  homepage "https://github.com/Reedtrullz/Vifty"

  depends_on macos: :sequoia

  signing_identity identity: "-"

  app "Vifty.app"

  zap trash: "~/Library/Application Support/Vifty"
end

cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.3"
  sha256 arm:   "31dfa23575acb4b9c59b0b5338ec78a6e23fb8693cd6962e5444fab454b9610c",
         intel: "12400c1b6380bcfe470aa716513c56902a6cb11bd380ddd48faa589f12adcb6a"

  url "https://github.com/Wox-launcher/Wox/releases/download/v#{version}/wox-mac-#{arch}.dmg"
  name "Wox"
  desc "Launcher tool"
  homepage "https://github.com/Wox-launcher/Wox"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  app "Wox.app"

  zap trash: "~/.wox"
end

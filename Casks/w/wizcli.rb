cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  version "0.64.0"
  sha256 arm:   "bee88f773bc3655f2f428077a19952494566a262227d68600a88f34adcb4cf4b",
         intel: "95001acbd45744fc084ab86da9853d839dd18e48121504d318d2ace3fda47640"

  url "https://downloads.wiz.io/wizcli/#{version}/wizcli-darwin-#{arch}"
  name "Wiz CLI"
  desc "CLI for interacting with the Wiz platform"
  homepage "https://www.wiz.io/"

  livecheck do
    url "https://downloads.wiz.io/wizcli/latest/wizcli-version"
    regex(/cli:\s"(\d+(?:\.\d+)+)/i)
  end

  binary "wizcli-darwin-#{arch}", target: "wizcli"

  zap trash: "~/.wiz"
end

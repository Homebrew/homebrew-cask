cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  version "0.67.0"
  sha256 arm:   "ae85ed2dc6d4efd443d97e642f0b621868593d7779a54ac1798a8f65dfc3c9a5",
         intel: "212826182011e3ad824a6874f07848f8a558eef80abf17c0a757a6e81f4aea01"

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

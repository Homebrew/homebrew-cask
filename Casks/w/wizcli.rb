cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  version "0.63.0"
  sha256 arm:   "6f9491ebda02f92707081ab86a26cf59796e6a0a0210e6ef723ac981a305c0a8",
         intel: "0281a52b735c36350c731e9a117f78fcd80adeee6058efd3ff58227beb3d6bcc"

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

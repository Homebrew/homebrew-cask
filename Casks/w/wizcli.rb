cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  version "0.68.0"
  sha256 arm:   "34bb955d4d7368c52fbc036f290a24750b074f6d4f74f230072774af6524a7cf",
         intel: "eea8a0a5bd7c1d3a4906ecda7d90a357cdee7bb19613878976aafee6346b9048"

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

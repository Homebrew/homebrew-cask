cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  version "0.73.0"
  sha256 arm:   "21ea18acf9fc7f4fcec8e5acb94bec84ada4ebc2391d0f7c2132b4c0b77acfca",
         intel: "2eac6132c7e53578165ed6a169ea44570fe9cddc526c6459d1ab5a2f58e9b5d6"

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

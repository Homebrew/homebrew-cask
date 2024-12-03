cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  version "0.61.0"
  sha256 arm:   "60a03ebd70cbf9de768027601fecb671ce188ab6b2260b2ed4fc16c3fa6cedbc",
         intel: "e1aaf8caa48ede03a0676e817ca5339637081773e86cf3392c3a1704f1de61bb"

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

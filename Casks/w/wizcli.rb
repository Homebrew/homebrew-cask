cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  version "0.66.0"
  sha256 arm:   "3af0b304ff4a650b62f028ff2f40c40a63e196e0c8c0c1231bb5dc1c567c1fd3",
         intel: "13349033b600ce3f4a249ff1dbb334b910bfbcf6da8f78961138dcf20a1165ae"

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

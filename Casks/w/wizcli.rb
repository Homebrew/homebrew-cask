cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  version "0.71.0"
  sha256 arm:   "408cfc64c32aaca9aea1052732909641345c219844018fa653dda65d5085eb13",
         intel: "c88c8e7529f85b5d58b17df41741ea78cc7234b5a668534ff84d1c9e148a672f"

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

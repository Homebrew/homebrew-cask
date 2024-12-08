cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  version "0.62.0"
  sha256 arm:   "f2c7cee332e929b4ccc612c3fa69ba0e502ddc0b63b27750995142e2230a0b5d",
         intel: "989d74057e8b02504c3977dec041d369221e4d13b160596f9ae95906d173ac2f"

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

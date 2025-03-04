cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  version "0.75.0"
  sha256 arm:   "71ca7cea0564657a8b7368daffd9aeebe5131f0def8591c961ec57067dccdb92",
         intel: "1f3a1cc516deecbb3ac20569413e1dd091e5d06522a9407f0dddf7de048b9820"

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

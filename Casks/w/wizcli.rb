cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.98.1"
  sha256 arm:          "c57522b3cd9b0d898cea4df4f769dbd3a77550344c5703f7a77914d31f326260",
         x86_64:       "25b1b971ea8a2784a42b4f92a2cb4f348f11567edae33f3f6de5adac0b104f85",
         arm64_linux:  "dd16fb6e775117ad4424b19dc60d35a798f5154f4752a45f74a3a62ce92fb6b1",
         x86_64_linux: "041a394d3624326db7981f8a4de32f47c69b6920caf88956f8f829d08283384a"

  url "https://downloads.wiz.io/wizcli/#{version}/wizcli-#{os}-#{arch}"
  name "Wiz CLI"
  desc "CLI for interacting with the Wiz platform"
  homepage "https://www.wiz.io/"

  livecheck do
    url "https://downloads.wiz.io/wizcli/latest/wizcli-version"
    regex(/cli:\s"(\d+(?:\.\d+)+)/i)
  end

  binary "wizcli-#{os}-#{arch}", target: "wizcli"

  zap trash: "~/.wiz"
end

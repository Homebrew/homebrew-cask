cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.96.0"
  sha256 arm:          "3214ad10d6ff9d978e5dee1c574a8fed72a5f4de1bae1e1675214bf4731167b2",
         x86_64:       "4ce4854dc7474bc113c834f0e1c9e2a80f88c69a0b39c98f09ce04e6ad6b3444",
         arm64_linux:  "fd3442440bec391f1ff81aaa8dd8569e14b71b7a1e97c44595d4cdf29198b6c7",
         x86_64_linux: "0f658ef420ae4806efe5b4654bb3f9c8d521f5a36b96967fbba8d6011146e5c4"

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

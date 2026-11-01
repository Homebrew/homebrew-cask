cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.82.0"
  sha256 arm:          "ad87c20c8d1e5214dd9f06a3faf33a57286e0adf08a95475803b5ff5ea799721",
         intel:        "34876e6ae6cf4eb3f62b77277a1575b0146711d8289b851a93e51d33352314d1",
         arm64_linux:  "6164e5a65700b1bf519cd29f94233886428ce683cabf1eb824d5a174156bd105",
         x86_64_linux: "4563aabb9fbee335baf9eb4d06397568dd8b4edcdff87bef7d29803664f9e62d"

  url "https://downloads.wiz.io/v#{version.major}/wizcli/#{version}/wizcli-#{os}-#{arch}"
  name "Wiz CLI"
  desc "CLI for interacting with the Wiz platform"
  homepage "https://www.wiz.io/"

  livecheck do
    url "https://downloads.wiz.io/v#{version.major}/wizcli/latest/wizcli-version"
    regex(/cli:\s"(\d+(?:\.\d+)+)/i)
  end

  binary "wizcli-#{os}-#{arch}", target: "wizcli"

  zap trash: "~/.wiz"
end

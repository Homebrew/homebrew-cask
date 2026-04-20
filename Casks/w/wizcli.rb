cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.43.0"
  sha256 arm:          "0a7af106b8eb8c8b012d95bfa9fd7bd9e961f242cd4846bac19b1d514028ff30",
         x86_64:       "0e23922593028f55c847f6b7207c41f5f2c45a9903ba4438a4b0445f90f67b53",
         arm64_linux:  "513dabec7b0412d3af7da7a2eb7e4e07cb4be929ad7c17cfadc566b2bde722af",
         x86_64_linux: "ee74a7f8d015926342c1632c7da1524777c48ee5606fd43ef3d616052754781f"

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

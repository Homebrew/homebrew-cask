cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.48.0"
  sha256 arm:          "65d8034d992a848118d49cd916496d3b83bbceb3439b5c5a1533969e9eab1ba7",
         x86_64:       "47d1da995548c496034bf93b9bb0fe366c9ad23be8c15d462b14b06beef0be83",
         arm64_linux:  "787a8afd3bf784f9b6c2aaf75f3d955cc1839370daebbebc4e9d807a4947bc42",
         x86_64_linux: "f6359ae7d475a12feac6f0f508cf3c0d757dfab8107b8e18406dc6e81ec42338"

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

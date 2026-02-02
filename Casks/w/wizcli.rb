cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.29.0"
  sha256 arm:          "fe5a7a1c724b187a6912b02016f1204a44400e28073cd4d48925e945f375d43b",
         x86_64:       "f49cf542d3e29aa8d981d51362f107ab3e608b27b4e3991064c064a86e7b06ef",
         arm64_linux:  "f79a535bcfea6ea0a09c2b4cfd9095f5966ad025dccbdcd695646b2fe1816306",
         x86_64_linux: "7b8743353add24e03ab9c48c3c10116f72b7c0d14b9f17c9152a436ac7048b20"

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

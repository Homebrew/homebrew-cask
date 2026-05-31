cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.49.0"
  sha256 arm:          "5487629eeea02125f791faad1375e793737162e334e82e769423c4e315b3911f",
         x86_64:       "2c3707d3d9f700d82a3ffb26e6ec6b43f11873b7a62e9a5f27155539a68758a3",
         arm64_linux:  "50be5f0571ad356c38577c2678045df04fbde2145c815d1108ef6cd2a179760c",
         x86_64_linux: "94dcad4043523129b907dd963c85da294c6058cd99d5a4c1a72d0139069a527e"

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

cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.86.0"
  sha256 arm:          "c7d6ca3d9c7c3b7bee8ff87af0ad441e084ea394282c8c3a28d30d9f937c3688",
         intel:        "f2516be88034ea449898f0a4f6acc44defe8d35f0a8e852f04095c3b3c67a62b",
         arm64_linux:  "867ce68200595f39f2ee0811d3e70f6569e76ef878052ea0bf4b217c6a0c2d91",
         x86_64_linux: "4f505c5a790d3a5aabf07939226e5a31e77f6310a07e45403378e22a8756bedd"

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

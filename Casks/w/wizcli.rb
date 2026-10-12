cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.79.0"
  sha256 arm:          "abe1c3526dfff11c2cf0d5d213bf93f6413860ac4f40e42ca66dc0a264d595cc",
         intel:        "a74878d01b036243549d073ec544633e8ee19fcd11d7dcd74b26400a6ded1c3e",
         arm64_linux:  "04a6adf815cdfdebdb06e5222f3da788f4743c179600d47a243e11254fcbeb14",
         x86_64_linux: "5f05aa45d491c3da488994b87956da1119770ed5379e711cbe8c95bacdca7763"

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

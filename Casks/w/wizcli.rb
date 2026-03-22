cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.37.0"
  sha256 arm:          "f63838a33f185ab716bbeb582fff6d673609867653a5c26a3891c911f92b4d06",
         x86_64:       "eefeab0fdecb22cabba77904961fa522898c00d6c321d39b76f2bad3f7740dc8",
         arm64_linux:  "342201a927ad304bbc486ee21bfdff22949d8907e90cbe389f3529af99f31314",
         x86_64_linux: "211ca32c5254f22bbee23b7f0609da3935fc43218614f47dae29cf9b9420a8a5"

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

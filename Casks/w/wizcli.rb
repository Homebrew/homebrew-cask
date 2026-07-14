cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.61.0"
  sha256 arm:          "0270f7774e6175b140bf18c65e76b63a84541975b71b9af5d96d8021733cec06",
         x86_64:       "4e5b0687ad6edb1c287052bdd8bc51596696a3d03c0d374921c8c123bb1a65a9",
         arm64_linux:  "66545124b0cced5dd6f1c196ca02107a143181bc5e13d5bc39bfb82ac420c91b",
         x86_64_linux: "f9384f10eec9021325d71330ecabe08d5b1de6f50d379d34d394b8fbbb51de00"

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

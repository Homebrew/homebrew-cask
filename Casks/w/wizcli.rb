cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.107.0"
  sha256 arm:          "d300701fef23fcf987b71bd39ae014408012d79dfeaf8538dd60fbcd9515faca",
         x86_64:       "cc69920f2dccb7888173a1de8a5fa31dbf53eaa482a1958b5a607bf6528e7ebb",
         arm64_linux:  "1aea5774ea4a3e181f26d4d1fde1062dcc2ee416880919485e2a989fee594387",
         x86_64_linux: "90ac8c31b469069784823c65f014df715bdad17beaff9c74079071edb3e682e0"

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

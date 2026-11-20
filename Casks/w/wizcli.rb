cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.85.0"
  sha256 arm:          "c52d59adcb7702a69286cf7d219c512c442c1d560cdc6fdb24d0c35b7fb93197",
         intel:        "2c4e333ac7894f652284cda5fe651bb35f163b04f8b25f28e843a6d0532a1e39",
         arm64_linux:  "efd5926e0e888983e731e0d9cd0d78cfc7bb8998a78dcd274fd835b5aac3b41f",
         x86_64_linux: "d1ccb0d0619f6d6a1b546be50385c036198ad9d6b0ede99b93fa389fbe9664db"

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

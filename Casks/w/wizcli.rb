cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.31.0"
  sha256 arm:          "d14750b0e4b9dddcb25c8c6b709a3620fea9d94782570e797007eea6f7be6793",
         x86_64:       "faac40952232a3428227995b8231a6ec5f56fc18a57cabe13381f66f2c3a1483",
         arm64_linux:  "ea6b04112e85b048794ea113862885fbaa5458bcd14b7a435ebc171e4b8c33f6",
         x86_64_linux: "d93ff2cbe2bd57753a95c97eed2a1019406268d45896ef90a59173378c6fca74"

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

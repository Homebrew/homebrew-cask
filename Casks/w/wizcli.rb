cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.95.0"
  sha256 arm:          "e42057a4865bf7c9e3ebe57fba1ccd477c4762f7ba3bae4160de0f1bbd4cb7ab",
         x86_64:       "1ea5050aecbfa07c396b4b19dc7707c676340a812e498664254e600ec9d295c1",
         arm64_linux:  "7959ec5327015b5f1264de62e573221c9717a2a3442c90b41f7fbe773e73ba99",
         x86_64_linux: "109179122337b0759743667b4e00709c87f74dc74e652dbe3817a18c4a5f2c39"

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

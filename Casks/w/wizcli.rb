cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.84.0"
  sha256 arm:          "cfb934e855d3c700553a6e97909b5f7321b044abd1c329a53ee978f86b158b9f",
         x86_64:       "46c996f108fa245c3aa71aea2d8adda6b0fcf8c38e9a089ce6c46e0819f6ed26",
         arm64_linux:  "1ee86ff5ef5ebc9dd311fba39dcf666455530c9933ee7c10f62882cbae6271d7",
         x86_64_linux: "d27edd05526cb5cac6bcb155a5ba5354e5c20656a4103c0e83575791faf840ef"

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

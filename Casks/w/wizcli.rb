cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  os macos: "darwin", linux: "linux"

  version "0.76.0"
  sha256 arm:          "9f09e8a7885c1f272f8ad8ecd3979e532e10f5bf4a7e04e43cdc33ef0e5c1069",
         x86_64:       "3155fe4ef256cfa402719cb0bd1e10e3b5bfeead27042c661283584cb06f3bb2",
         arm64_linux:  "6f214b64238765488605b82d281fb238f0ee143a1e930bd5cba50636e9fb5d7c",
         x86_64_linux: "33171ce0e32eb9f50d44efd462598a5d74702cb25aa70ae572e3d200a00b1b0a"

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

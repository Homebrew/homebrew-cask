cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.100.0"
  sha256 arm:          "b32d03792f27d44da7dd2ee34670c86d5cba6c467ea3813fc2824c0159f06b94",
         x86_64:       "13dab60b18d820236fb208d9fcc3e8791bcefa6dfead0a34127fc6098ac2bc31",
         arm64_linux:  "a799a746ff895cf8755935e43d096c62ab13aa013ecba53e86b6501982122c12",
         x86_64_linux: "d95a3fdefa1e5d987b52b5ee543ef83e86235fbc3c593f5897028cd0b8594ca1"

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

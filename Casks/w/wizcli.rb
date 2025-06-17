cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.85.0"
  sha256 arm:          "8ee0326e5ca8e87e5513bfaf910662749b8b88cc9d7cb7ae36f54605c5251e43",
         x86_64:       "94a55ade3114d216687645b65e1645191569f6cb7fbb5893c8729a1ab13fa887",
         arm64_linux:  "f26a7b1f2aad3945b1642666d9ffcc53d3693d9b628023c950b5d01e60b573c3",
         x86_64_linux: "08157ec134a1bf84ab08be173ff59e3a249effdeb162a02380d6832e94c6f711"

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

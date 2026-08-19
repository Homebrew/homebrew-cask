cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.70.0"
  sha256 arm:          "fe706da6fe292ff9c46b1f713e765d148fcc445caf497568c9b7ea7e37482ab5",
         intel:        "843eae52c84d35511f5219adc2501fb82566c7126488845370825043646739f1",
         arm64_linux:  "5370c158cdb4da90b7c7a5d6450a5772e6a360327ae9c6512b9a7dff19ccbcb5",
         x86_64_linux: "b122daa64528d3986d5b1f4cb24d1d6c8ba03d00ca1b094b78d4426c81d291d8"

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

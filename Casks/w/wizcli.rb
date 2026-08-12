cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.67.0"
  sha256 arm:          "d8d94323bd3d3c3fb7bfe675a3a1d79602cf3c3727a6733e2ff93769d1b52a2d",
         x86_64:       "50eac6e587c81302b7286414e135058db49e5a40be25331b8f4d8a52c536b337",
         arm64_linux:  "9594546a510b24b8b6edf1a8acbacb56da8ff8331ff60f84d75f4da591e92086",
         x86_64_linux: "3634e617f03af40b5609c79f9ac98984ed8dbf9683e5c299a88e0814bfe065dc"

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

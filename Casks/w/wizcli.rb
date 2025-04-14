cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.80.0"
  sha256 arm:          "742658a18a7d11cc810073f1f66842b037b861014fd0587a81e14a0787ebd5bb",
         x86_64:       "6bed6ecb23d0c85197c53a518a973872761e375777a92086cf1920a46f37fe72",
         arm64_linux:  "2fc66529b595a580818dd4be955b908c45c0b88cdcc77c7fa278c13126f3d291",
         x86_64_linux: "424ed912b52846a7272806b795714531dd807e8a345de545f7a87728aee0d655"

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

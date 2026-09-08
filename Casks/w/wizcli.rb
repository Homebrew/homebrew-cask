cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.74.0"
  sha256 arm:          "efc48aa6a44b7d66cca9fb390add3528dd7a87684d8df1280eb41bbf563c0390",
         intel:        "8f73f09839597b53aba042df2896d14bdd0703fd7a3dca2c4c7ffae47b648d25",
         arm64_linux:  "2960f79792fd2341a03494341d6da2b646bc795b3d280a96a34528f20b522ede",
         x86_64_linux: "5d6c4e873242fe0003262c7f66bbc6185a42c50e33b47bfad56d5cb6d7479580"

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

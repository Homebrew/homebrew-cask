cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.77.0"
  sha256 arm:          "8fc925e6c7d37dc39cb3086174ede755bf3953932d94ec27e6e1179fa325f942",
         intel:        "477bbecea2756b485965d49355220afe74d05d2edad90fef42dea21f4c99951b",
         arm64_linux:  "d84b2fb729e4aa32f6e2ccccaa1dd6ea853e883bc1319689beeb9c58e66bf2d7",
         x86_64_linux: "609ce7bb2faf755e336553dbc0c15bdbe9717c617db572ee5b5f765154a8dca3"

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

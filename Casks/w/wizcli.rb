cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.99.0"
  sha256 arm:          "d9aa626f4e7b8c2fa2c32d67fb15c89111dac2d0853131d16f711e6ca0791ed2",
         x86_64:       "98e2dcdef9beb45a35c47f42364fb19c51ae7ebc5e163e0c7f838efadfaf0759",
         arm64_linux:  "171468e97e3862b6d22a9ec5b3025194e532e8a4401c25760f54923fbfc0de48",
         x86_64_linux: "601400b357e9648b3705894d80791fc9401e55436970149a15756cf4f52dccac"

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

cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.62.0"
  sha256 arm:          "976ac23e3db35f6b096cb4ff29fbb1bc8d74fdc87cc1e7c63ea28606c25cbbd5",
         x86_64:       "e854a663ca81abef9f300022bea65e29f07b9f42197be4a1b782274f09ac1c6f",
         arm64_linux:  "dff8ba4134a67db5e6c40b6415bea6c61f44c19b8dc24f28f6864445830183a5",
         x86_64_linux: "a3e3cda1788094335a185ee11ddccef9cd6b2b7cf4116dbb7e1d9e1e72f94e16"

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

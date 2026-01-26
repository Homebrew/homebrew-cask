cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.28.0"
  sha256 arm:          "d03eb2f8c9a34c72a3db4ed248a2c50496562dfe4ea607072d0b83b59091ffc2",
         x86_64:       "2b40ed66be3df1c34b6e794eab9333c87e1ca1b8829b393c6207187278ec79c1",
         arm64_linux:  "216c6122ecd21ef67f59caa644099adbac35f9705e3896d9e26df21527e556fe",
         x86_64_linux: "009d5a9a09bf753f0d778cd13d25c4074f282a78c55ff09d061ed32758702c51"

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

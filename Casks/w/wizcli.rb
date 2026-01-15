cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.26.0"
  sha256 arm:          "79dab4f23a5219d590de30707a75388035b74ffc6303e82ecc26b1a51fa05d24",
         x86_64:       "409e6e7628604d9011772adc08490516fd0112da8added14cd6fd38816e816d1",
         arm64_linux:  "54d877c5dedacab4c4a77d6346e57838e416f3d0334d0bce10a07d23e40d574e",
         x86_64_linux: "5256bd9fe708bd641611fdc4e3ba63856b87901f24db87875080997336ed5230"

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

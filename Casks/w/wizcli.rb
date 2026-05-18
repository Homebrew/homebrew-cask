cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.47.0"
  sha256 arm:          "f4653d5c37ca6a5f85d152396f3b62240839a54ff22768f363ce1fc04cc6fdd9",
         x86_64:       "371bec3560f6532f2c890b4d6bac121b23259a8b3d2f990a3faf53eaca134924",
         arm64_linux:  "769e967b3d1622c9fc5723c662e845898cf85a00dddaf7bd75b9de73e0c0a96b",
         x86_64_linux: "194bf478f811b3af61dfa3daa3d3295ed863ae54927b83b07e8cc5080b95d525"

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

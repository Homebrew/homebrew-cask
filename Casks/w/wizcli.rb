cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.73.0"
  sha256 arm:          "94f81a53461061eb19196d2bf34c2a6155130c074d6e4664dd494a15b98e4498",
         intel:        "1b7b459c9ccd0880b45bb1fd6b08280590c60be4329913a524baafb73e4e6390",
         arm64_linux:  "fb558360b1b580cc74b6486cabff8905ba9e30da85b7b27eb306a6b14e66a54a",
         x86_64_linux: "7c3fd939ddd34e8f834183f9b198eaf8d78c16b9d1568d9b1e8c9ed6c756a135"

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

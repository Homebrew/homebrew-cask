cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.24.0"
  sha256 arm:          "ea7715eb83215fa026bd68713ba518f7f3a1124f97a73fe5f4ee462de8f03dee",
         x86_64:       "fe7462bbdb2e0cc93d574a4853d6bf7e44d4a093a0ebc01e5bc1ddfd21420c06",
         arm64_linux:  "7fe5288e525ad8b3ac58a1595aba9b66f0b2bbab24f1949fc357696330f4b35a",
         x86_64_linux: "a89ca8c38a9db93b95b4c7f117057751e1e23c95b88f60c0b63ffff3e0982df5"

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

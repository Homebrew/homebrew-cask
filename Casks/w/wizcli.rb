cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  os macos: "darwin", linux: "linux"

  version "0.77.0"
  sha256 arm:          "a4f3c68cbd33f9db8355ad5c30cec787997824afdd2ca2e8b920cd3bc7e54e8d",
         x86_64:       "1c59d7bfa0249c086de9e0269488f4bd9c92a7a4533c54180606e2825668a16d",
         arm64_linux:  "c544efb5c25b63ed26ac5f2222dc2b280d5e8ad2871a8273ffa24b69e0d5a899",
         x86_64_linux: "36036693d213b125f25a65a90baaa9e7f1e4f335ec592cf3ba8ee1bf59815515"

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

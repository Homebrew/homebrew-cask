cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.78.0"
  sha256 arm:          "21b30c2aab4e2975c4b7fd7547e833f128658b6543c141fda31f1c07ca0f9872",
         x86_64:       "3ad12f82669d63461f612c661a3de4192f46710910e91bc8e56f97baa68ec2cc",
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

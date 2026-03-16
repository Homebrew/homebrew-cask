cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.36.0"
  sha256 arm:          "d1900dc88cd4b15786b3c6175532ed7cba1b0034626c5558a8a9bfccf5a15272",
         x86_64:       "f37bc21343f1749d8ded5a589c3964639ad5f25ebe6cc8395cbfd557ecc06ac7",
         arm64_linux:  "917613f1129dd3bc63e175cc06c93d7dd5efa4b6d38484a68cea796cdcdc4f33",
         x86_64_linux: "1686441093fb320d84255f3aab1ba956a5d1b3dc5dabb7e3b3a58971e9e41456"

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

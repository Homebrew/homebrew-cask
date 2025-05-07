cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.83.0"
  sha256 arm:          "7d7a2354d22f2ad8a0cbd0471a96fc08a560fedcd357476fdd43b37215d30fc1",
         x86_64:       "fd6180643be11a7362d63f8cc6a17bf432acbda5a73198e4d00500915ba1f7f5",
         arm64_linux:  "125cebb72c9c2500f282e3c8c7c149ae3459fade19efbab46b069b088ca1e616",
         x86_64_linux: "c8eaaf1ce67486e97492ebe75af6f8be6ccebde7a379ff14128a6ad90e77d387"

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

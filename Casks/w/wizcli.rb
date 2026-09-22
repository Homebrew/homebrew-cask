cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.76.0"
  sha256 arm:          "3f8a6d0e663b3007046cb57a2229f499740e3a4effe6c9b1f3c8ec59c397c2a1",
         intel:        "1977248d52af63244d16e6d6284c88d50e9efedd9df108c0709935f7fc27fd67",
         arm64_linux:  "9e1427242dd4ec43f0b694023a8bbcc132bc8788b0ef696e398c4a1fedcf90c3",
         x86_64_linux: "73ada5df67f93a3787d51df66ffc4dce876d322d3cc446981239fd75d5e6b063"

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

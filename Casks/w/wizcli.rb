cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.39.0"
  sha256 arm:          "53232951eaccccf9a19c867af5ed91f9856a947bb8f72bbc82889b858635383c",
         x86_64:       "06f7794b8f38b2604347f752bb51e5612bcba733c645a232745ce8089047a76a",
         arm64_linux:  "a9dfdd75beab965a27f5e726a0583a06a0d22eff81196b989514a986966d8b04",
         x86_64_linux: "de86f9090d08518d9bcfbee0fe9d426a655896f5ebc82945863410c71ca6cd98"

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

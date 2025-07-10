cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.88.0"
  sha256 arm:          "b9ea3b312677538183ba7c3b7eff907f5b5486bcba6f5b2a51ed77887c66cb8e",
         x86_64:       "855e3a02ab2a84685ea263780620d932a108d71186fc84d28c9211fef12d5f04",
         arm64_linux:  "23fa4d683d3491a8760b651b97674b22f27918c02d036eb9f2ac355403afd36d",
         x86_64_linux: "107eb328c5266907bf0e7a1c7e4cd58a2593772beeaf5d77bd477d708b7da24c"

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

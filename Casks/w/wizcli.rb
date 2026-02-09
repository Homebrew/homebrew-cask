cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.30.0"
  sha256 arm:          "f02d86b0ab5971d6689d4c8a0e3e7cbc71a8548b497a1beb67d1ae80a2bfb218",
         x86_64:       "24933d5b0c549db398e3fb33220fece3c2d6a63cb376fee7b3a0f8c9db5350dd",
         arm64_linux:  "7435ea1e969d819f5abfcbad6c176e1e6328a2c8384b65c0b26432724c93fb02",
         x86_64_linux: "920f19eea237ae3d82c28bdcaefd9e0410bf1411d4b27a78813654e77e75d794"

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

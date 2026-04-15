cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.42.0"
  sha256 arm:          "6dd90aca60e3aafd40c95c902568c7ff50887c8269580bd7f9ba9ad3517c200a",
         x86_64:       "8ca5a92b10b85530603670054b0463c98909a83a537ba51bd614de4644421e51",
         arm64_linux:  "a4f4ab38cfde9776bcd58fc7d41a2507a1573df35b4678d98527a5cf81338d7e",
         x86_64_linux: "c1b9f4f7227028dfc9420ed051b24592b17050505dd8800a515d260a1a189aa1"

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

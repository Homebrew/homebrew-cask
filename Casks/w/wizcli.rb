cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.65.0"
  sha256 arm:          "df4ec18a1779c5869b936de700559a6a7d881785c2b50d1401034057c91acea6",
         x86_64:       "95bf9e3b36547bbad0236b615d2072b40d47b7c258d3dc2ae146d08f7cece7e5",
         arm64_linux:  "4d951a13fcf3fd7d4cecad49c85d8dd4ce6add83530cc4e11082d206e5489267",
         x86_64_linux: "c19a50dc4ec14e7271f4fd87c703a72084705615c932f61ae39744dff4f12a6c"

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

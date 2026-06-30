cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.58.0"
  sha256 arm:          "e466dfe36d79dd1946b773cb131fd4daa68cd46926a4721798da468489575747",
         x86_64:       "731775a1b7020315d98bab9d9252615e01cfa7d1745ad4e2890e32dcc13f1cfa",
         arm64_linux:  "8d04af901749d3e1af5721ed60260c3736caaa0da541f113403d6050a99c81b0",
         x86_64_linux: "98c4a2e14a82e407318701cbc4384807b082701db93a53c55cbbd0fb53e200cd"

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

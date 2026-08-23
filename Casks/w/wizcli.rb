cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.71.0"
  sha256 arm:          "b177c20df05e6ebd838baa7a63612add4f03b88f89d088990077f772df78cd06",
         intel:        "6adce4a89e12ca4bbd3437e27473ef53fd94e9490b986c045ded8e3ea15cb73b",
         arm64_linux:  "4e9f7c860e7b138a42a5b9f5ce647c6014e7aecbf5100a25f73944ee8029f3e5",
         x86_64_linux: "48b63de3c3bb7526c072f1a896780d9d261ddbdc94ffd2ed68b78c1d77e53898"

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

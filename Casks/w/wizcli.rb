cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  version "0.69.0"
  sha256 arm:   "c4fdf02d33e1194390ef64220c46fc955bc80ebfda5b1430d292f5ac2bb861e4",
         intel: "baf94c6ac4edda67707565ce889dbc3f0bbf950a648b47a123c9f0eb6c312051"

  url "https://downloads.wiz.io/wizcli/#{version}/wizcli-darwin-#{arch}"
  name "Wiz CLI"
  desc "CLI for interacting with the Wiz platform"
  homepage "https://www.wiz.io/"

  livecheck do
    url "https://downloads.wiz.io/wizcli/latest/wizcli-version"
    regex(/cli:\s"(\d+(?:\.\d+)+)/i)
  end

  binary "wizcli-darwin-#{arch}", target: "wizcli"

  zap trash: "~/.wiz"
end

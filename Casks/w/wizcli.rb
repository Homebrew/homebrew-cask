cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  version "0.65.0"
  sha256 arm:   "f8ac548ab49c7edcfb77f48a893217dae8c053c92db445fb12dd95608432d81f",
         intel: "1cdc77158faf204c865fd2082a2d63c8bfd7c3966dd083531d4fc5227ac10773"

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

cask "wizcli" do
  arch arm: "arm64", intel: "amd64"

  version "0.70.0"
  sha256 arm:   "bff51aad33aaceaff96b1977854d98f4bc36e5e900b1a2d98d1c8301a5057f4c",
         intel: "39d9424704dcba379597b15a8dc98b5b445b6b6e510b5513a27cde14a7a6af70"

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

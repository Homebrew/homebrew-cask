cask "vertcoin-core" do
  version "22.1"
  sha256 "50b485cf60d4f778bf4dedda1189cb83988fd814af93da8734568f79784e542c"

  url "https://github.com/vertcoin-project/vertcoin-core/releases/download/v#{version}/vertcoin-#{version}-osx-signed.dmg",
      verified: "github.com/vertcoin-project/vertcoin-core/"
  name "Vertcoin Core"
  desc "Vertcoin client and wallet"
  homepage "https://vertcoin.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Vertcoin-Qt.app", target: "Vertcoin Core.app"

  preflight do
    set_permissions "#{staged_path}/Vertcoin-Qt.app", "0755"
  end

  zap trash: "~/Library/Preferences/org.vertcoin.Vertcoin-Qt.plist"
end

cask "vertcoin-core" do
  version "0.18.0"
  sha256 "2c040ca687297ec8124251833e7c2a5a9d3831b1eaacab681cc8772b353e6702"

  url "https://github.com/vertcoin-project/vertcoin-core/releases/download/#{version}/vertcoin-#{version}-osx.dmg",
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

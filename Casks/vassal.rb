cask "vassal" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.6.17"
  sha256 arm:   "1850a37ef3e46401e2cce13ae7653a22c49eee1c285f581dc92020bb181c5cca",
         intel: "a6abc0854b72283920e29807de227847fe5c961253cda869c1997cc61f59bda9"

  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macos-#{arch}.dmg",
      verified: "github.com/vassalengine/vassal/"
  name "VASSAL"
  desc "Board game engine"
  homepage "https://www.vassalengine.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "VASSAL.app"

  zap trash: "~/Library/Application Support/VASSAL"
end

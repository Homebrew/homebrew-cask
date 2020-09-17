cask "vorta" do
  version "0.7.1"
  sha256 "3a6a5ea8d85dc8815cacfdf6a5591d0d811c4cb2320c08f89cb7d9de1261b3fa"

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/vorta-#{version}.dmg"
  appcast "https://github.com/borgbase/vorta/releases.atom"
  name "Vorta"
  desc "Desktop Backup Client for Borg"
  homepage "https://github.com/borgbase/vorta"

  auto_updates true
  depends_on macos: ">= :mojave"
  depends_on formula: "borgbackup"

  app "Vorta.app"

  zap trash: "~/Library/Application Support/Vorta"
end

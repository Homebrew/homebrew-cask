cask "vorta" do
  version "0.7.0"
  sha256 "27ed5fb099578e376a7a46b68cd237de40368f688530cdf3b6d87e002456d6d5"

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

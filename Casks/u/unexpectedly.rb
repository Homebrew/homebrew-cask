cask "unexpectedly" do
  version "1.0b"
  sha256 :no_check

  url "http://s.sudre.free.fr/Software/files/Unexpectedly.dmg"
  name "Unexpectedly"
  desc "Browse and visualise the reports from crashes"
  homepage "http://s.sudre.free.fr/Software/Unexpectedly/about.html"

  # Artifact not available over HTTPS
  disable! date: "2025-12-23", because: :no_longer_meets_criteria

  app "Unexpectedly.app"

  zap trash: "~/Library/Preferences/fr.whitebox.unexpectedly.plist"
end

cask "unexpectedly" do
  version "1.0b"
  sha256 :no_check

  url "http://s.sudre.free.fr/Software/files/Unexpectedly.dmg"
  name "Unexpectedly"
  desc "Browse and visualize the reports from crashes"
  homepage "http://s.sudre.free.fr/Software/Unexpectedly/about.html"

  livecheck do
    url :homepage
    regex(%r{Version</b>:</td><td>(\d+(?:\.\d+)*\w)}i)
  end

  app "Unexpectedly.app"

  zap trash: "~/Library/Preferences/fr.whitebox.unexpectedly.plist"
end

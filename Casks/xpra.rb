cask "xpra" do
  version "4.4.6,29"
  sha256 "f3084269a629a81af0d904c74762eb8f44ecab796968da532a8cf2821408f341"

  url "https://www.xpra.org/dists/osx/x86_64/Xpra-Python3-x86_64-#{version.csv.first}-r#{version.csv.second}.pkg"
  name "Xpra"
  desc "Screen and application forwarding system"
  homepage "https://www.xpra.org/"

  livecheck do
    url "https://www.xpra.org/dists/osx/x86_64/Xpra-x86_64.pkg.sha1"
    strategy :page_match do |page|
      match = page.match(/x86_64[._-]v?(\d+(?:\.\d+)+)[._-]r(\d+)\.pkg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "Xpra-Python3-x86_64-#{version.csv.first}-r#{version.csv.second}.pkg"

  uninstall pkgutil: "org.xpra.pkg",
            delete:  "/Applications/Xpra.app"

  zap trash: [
    "/Library/Application Support/Xpra",
    "~/Library/Application Support/Xpra",
    "~/Library/Saved Application State/org.xpra.xpra.savedState",
  ]
end

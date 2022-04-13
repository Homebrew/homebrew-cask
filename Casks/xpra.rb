cask "xpra" do
  version "4.3.2,0"
  sha256 "ab803be8ef351a1354f3bc74feda49eaf287ae7c10530152db9495de419fe282"

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

  pkg "Xpra-Python3-x86_64-#{version.csv.first}-r#{version.csv.second}.pkg"

  uninstall pkgutil: "org.xpra.pkg"

  zap trash: "/Library/Application Support/Xpra"
end

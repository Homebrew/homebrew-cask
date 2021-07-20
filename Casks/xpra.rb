cask "xpra" do
  version "4.2.1,0"
  sha256 "3adcf98f362ff10be976074bffddea100ce907ba7eefaf06a58b1785cb24de1d"

  url "https://www.xpra.org/dists/osx/x86_64/Xpra-Python3-x86_64-#{version.before_comma}-r#{version.after_comma}.pkg"
  name "Xpra"
  desc "Screen and application forwarding system"
  homepage "https://www.xpra.org/"

  livecheck do
    url "https://www.xpra.org/dists/osx/x86_64/Xpra-x86_64.pkg.sha1"
    strategy :page_match do |page|
      match = page.match(/x86_64[._-]v?(\d+(?:\.\d+)+)[._-]r(\d+)\.pkg/i)
      "#{match[1]},#{match[2]}"
    end
  end

  pkg "Xpra-Python3-x86_64-#{version.before_comma}-r#{version.after_comma}.pkg"

  uninstall pkgutil: "org.xpra.pkg"

  zap trash: "/Library/Application Support/Xpra"
end

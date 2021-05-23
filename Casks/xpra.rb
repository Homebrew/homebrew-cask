cask "xpra" do
  version "4.2,0"
  sha256 "af44d9943b1cfd08f40d2cc4ab4d9a14d231a0a46e0df95fb24ee79a1df1498d"

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

  uninstall pkgutil:  "org.xpra.pkg"

  zap trash: "/Library/Application Support/Xpra"
end

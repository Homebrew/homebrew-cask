cask "xpra" do
  version "4.2.3,0"
  sha256 "a6de5a0aff30f9b81aa615bcddf3c856ea4c0b0407a3f70dfde5f7d992e9bc25"

  url "https://www.xpra.org/dists/osx/x86_64/Xpra-Python3-x86_64-#{version.before_comma}-r#{version.after_comma}.pkg"
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

  pkg "Xpra-Python3-x86_64-#{version.before_comma}-r#{version.after_comma}.pkg"

  uninstall pkgutil: "org.xpra.pkg"

  zap trash: "/Library/Application Support/Xpra"
end

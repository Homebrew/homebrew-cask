cask "xpra" do
  version "5.0.1,0"
  sha256 "9f2477e48a78875b2262e30b9e23cd1ce63d5ed10be19750b9021cf61ac8cff1"

  url "https://www.xpra.org/dists/osx/x86_64/Xpra-x86_64-#{version.csv.first}-r#{version.csv.second}.pkg"
  name "Xpra"
  desc "Screen and application forwarding system"
  homepage "https://www.xpra.org/"

  livecheck do
    url "https://www.xpra.org/dists/osx/x86_64/Xpra-x86_64.pkg.sha1"
    regex(/x86_64[._-]v?(\d+(?:\.\d+)+)[._-]r(\d+)\.pkg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :sierra"

  pkg "Xpra-Python3-x86_64-#{version.csv.first}-r#{version.csv.second}.pkg"

  uninstall pkgutil: "org.xpra.pkg",
            delete:  [
              "/Applications/Xpra.app",
              "/usr/local/bin/Xpra*",
            ]

  zap delete: "/Library/Application Support/Xpra",
      trash:  [
        "~/Library/Application Support/Xpra",
        "~/Library/Saved Application State/org.xpra.xpra.savedState",
      ]
end

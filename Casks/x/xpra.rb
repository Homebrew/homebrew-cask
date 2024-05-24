cask "xpra" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "6.0.1,0"
    sha256 "f045446b53d7d00a124512a3037363f66fb2a3e80094aab0b8f5923c496890b1"
  end
  on_intel do
    version "6.0,35230"
    sha256 "e6554c7a28ad266b48cdff2f08d060223cb0ba3656cad945df885be630bfd3cb"
  end

  url "https://www.xpra.org/dists/osx/#{arch}/Xpra-#{arch}-#{version.csv.first}-r#{version.csv.second}.pkg"
  name "Xpra"
  desc "Screen and application forwarding system"
  homepage "https://www.xpra.org/"

  livecheck do
    url "https://www.xpra.org/dists/osx/#{arch}/Xpra-#{arch}.pkg.sha1"
    regex(/#{arch}[._-]v?(\d+(?:\.\d+)+)[._-]r(\d+)\.pkg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :sierra"

  pkg "Xpra-#{arch}-#{version.csv.first}-r#{version.csv.second}.pkg"

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

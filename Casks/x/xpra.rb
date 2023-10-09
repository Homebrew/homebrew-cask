cask "xpra" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "5.0.3,0"
    sha256 "34a6b8c831b5a31a87dbd93898c3afb415ab2096faccea0c4530ada4ccbef9f1"
  end
  on_intel do
    version "5.0.2,3"
    sha256 "4fce517e0547dc5cd6b26c08df9f42c4ad30bdfe7eebc9e0d0f4f4c6f280de9a"
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

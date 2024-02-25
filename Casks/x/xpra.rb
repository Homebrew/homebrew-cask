cask "xpra" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "5.0.6,0"
    sha256 "2f8e9fa004885c4cee33bdbf241e73244082f117c70822829c258a1a4cee977a"
  end
  on_intel do
    version "5.0.6,0"
    sha256 "b5cc47bb330c644ad2cfd205f40fdc9a3aed15f179b310d4a15a9a0175298b57"
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

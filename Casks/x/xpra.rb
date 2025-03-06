cask "xpra" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "6.2.3,0"
    sha256 "762c4e40987193096b187e546b9e02e1cc3891af6e09bc14e1170c64c888b53d"
  end
  on_intel do
    version "6.2.4,0"
    sha256 "164d8597aceaeb7f5c83f2c2506081bcf5449bc06b871dd5e3992912bfca3c9b"
  end

  url "https://xpra.org/dists/MacOS/#{arch}/Xpra-#{arch}-#{version.csv.first}-r#{version.csv.second}.dmg",
      verified: "xpra.org/"
  name "Xpra"
  desc "Screen and application forwarding system"
  homepage "https://github.com/Xpra-org/xpra/"

  livecheck do
    url "https://xpra.org/dists/MacOS/#{arch}/"
    regex(/href=.*?Xpra-#{arch}[._-]v?(\d+(?:\.\d+)+)(?:[._-]r(\d+))?\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match[1] ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  depends_on macos: ">= :sierra"

  app "Xpra.app"

  zap delete: "/Library/Application Support/Xpra",
      trash:  [
        "~/Library/Application Support/Xpra",
        "~/Library/Saved Application State/org.xpra.xpra.savedState",
      ]

  caveats do
    requires_rosetta
  end
end

cask "xpra" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "6.5.1,0"
    sha256 "a64d9f06483a415f2490455f13b639af585274653a026075ecc6b4e57caa59d3"
  end
  on_intel do
    version "6.4.2,1"
    sha256 "b59119b255c615fcc2077c2154ca47646c7726d0a5142f4b12a8ca4c6b4a1640"
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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "Xpra.app"
  binary "#{appdir}/Xpra.app/Contents/MacOS/Xpra", target: "xpra"

  zap delete: "/Library/Application Support/Xpra",
      trash:  [
        "~/Library/Application Support/Xpra",
        "~/Library/Saved Application State/org.xpra.xpra.savedState",
      ]
end

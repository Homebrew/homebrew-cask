cask "xpra" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "6.3.5,0"
    sha256 "8864dcb9558c36b96a9759db78338deebb20a2a5e4c7dc7379298a6b26cf510c"
  end
  on_intel do
    version "6.3.4,0"
    sha256 "8ce5dbadccd4792bafbe7c047bc7634e96a4e80230c1fb2c24e48629df2c1a64"
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

  depends_on macos: ">= :monterey"

  app "Xpra.app"
  binary "#{appdir}/Xpra.app/Contents/MacOS/Xpra", target: "xpra"

  zap delete: "/Library/Application Support/Xpra",
      trash:  [
        "~/Library/Application Support/Xpra",
        "~/Library/Saved Application State/org.xpra.xpra.savedState",
      ]
end

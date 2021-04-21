cask "xlink-kai" do
  version "7.4.40,539601682"
  sha256 "e75c5f002ccc2071919f66836e0aa504cce1ab910d96ae587bc1e61da5c4ad0c"

  url "https://github.com/Team-XLink/releases/releases/download/#{version.before_comma}/XLinkKai-#{version.before_comma}-#{version.after_comma}-macOS.dmg",
      verified: "github.com/Team-XLink/releases/"
  name "XLink Kai"
  homepage "https://www.teamxlink.co.uk/"

  livecheck do
    url "https://github.com/Team-XLink/releases/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/XLinkKai-(\d+(?:\.\d+)*)-(\d+)-macOS\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  depends_on cask: "wireshark-chmodbpf"

  app "XLink Kai.app"
end

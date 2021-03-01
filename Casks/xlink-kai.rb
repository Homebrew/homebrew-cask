cask "xlink-kai" do
  version "7.4.39,539601671"
  sha256 "b5b6d3fec363c1c522b07cbf009fa097aa2719689ebe90309a95b7a7ff3a6a3f"

  url "https://github.com/Team-XLink/releases/releases/download/v#{version.before_comma}/XLinkKai-#{version.before_comma}-#{version.after_comma}-macOS.dmg",
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

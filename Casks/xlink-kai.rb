cask "xlink-kai" do
  version "7.4.43,606669993"
  sha256 "01ad053900d624e7b98507a7f2d2f15723bd40e08ea70dceee43057c230a0631"

  url "https://cdn.teamxlink.co.uk/kai/XLinkKai-#{version.csv.first}-#{version.csv.second}-macOS_x86_64.dmg"
  name "XLink Kai"
  desc "Free online play for all your favourite consoles"
  homepage "https://www.teamxlink.co.uk/"

  livecheck do
    url "https://api.teamxlink.co.uk/kai/releases/v2/?platform=macos_x86_64"
    strategy :page_match do |page|
      match = page.match(%r{/XLinkKai-(\d+(?:\.\d+)*)-(\d+)-macOS_x86_64\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  depends_on cask: "wireshark-chmodbpf"

  app "XLink Kai.app"
end

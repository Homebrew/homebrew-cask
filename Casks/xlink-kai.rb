cask "xlink-kai" do
  version "7.4.39,539601671"
  sha256 "b5b6d3fec363c1c522b07cbf009fa097aa2719689ebe90309a95b7a7ff3a6a3f"

  # github.com/Team-XLink/releases/ was verified as official when first introduced to the cask
  url "https://github.com/Team-XLink/releases/releases/download/v#{version.before_comma}/XLinkKai-#{version.before_comma}-#{version.after_comma}-macOS.dmg"
  appcast "https://github.com/Team-XLink/releases/releases.atom"
  name "XLink Kai"
  homepage "https://www.teamxlink.co.uk/"

  depends_on cask: "wireshark-chmodbpf"

  app "XLink Kai.app"
end

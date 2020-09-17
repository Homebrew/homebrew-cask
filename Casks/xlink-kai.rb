cask "xlink-kai" do
  version "7.4.38"
  sha256 "67e9b35ef505671812c5ee48b7fe6888ebc6d3e62d12b51a10ed1df1ac9cfd63"

  # github.com/Team-XLink/releases/ was verified as official when first introduced to the cask
  url "https://github.com/Team-XLink/releases/releases/download/v#{version}/XLink.Kai.macOS.zip"
  appcast "https://github.com/Team-XLink/releases/releases.atom"
  name "XLink Kai"
  homepage "https://www.teamxlink.co.uk/"

  depends_on cask: "wireshark-chmodbpf"

  app "XLink Kai.app"
end

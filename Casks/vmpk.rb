cask "vmpk" do
  version "0.7.2.1"
  sha256 "643ad24109114bd235ee9174fde619c6f804163c105a42920381d25d3100b471"

  # downloads.sourceforge.net/vmpk/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/vmpk/#{version.major_minor_patch}/vmpk-#{version}-mac-x64.dmg"
  appcast "https://sourceforge.net/projects/vmpk/rss"
  name "VMPK"
  homepage "https://vmpk.sourceforge.io/"

  depends_on macos: ">= :sierra"

  app "vmpk.app"
end

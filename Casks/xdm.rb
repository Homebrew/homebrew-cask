cask "xdm" do
  version "7.2.7"
  sha256 :no_check

  # downloads.sourceforge.net/xdman/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/xdman/xdm-setup.dmg"
  appcast "https://sourceforge.net/projects/xdman/rss"
  name "Xtreme Download Manager"
  homepage "https://xdman.sourceforge.io/"

  installer script: {
    executable: "#{staged_path}/install",
    sudo:       true,
  }

  uninstall delete: [
    "/Applications/xdm.app",
    "~/Library/LaunchAgents/org.sdg.xdman.plist",
  ]

  zap trash: "~/.xdman"
end

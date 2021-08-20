cask "xdm" do
  version "7.2.7"
  sha256 "aa3c3df48894ec1e28f3089d93da68085ada43b715eb0f3e31fdda71da021057"

  url "https://github.com/subhra74/xdm/releases/download/#{version}/XDMSetup.dmg",
      verified: "github.com/subhra74/xdm/"
  name "Xtreme Download Manager"
  homepage "https://xtremedownloadmanager.com/"

  livecheck do
    url "https://github.com/subhra74/xdm/releases"
    regex(%r{(\d+(?:\.\d+)*)/XDMSetup\.dmg}i)
  end

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

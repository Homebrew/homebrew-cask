cask "twonkyserver" do
  version "8.5.3-7"
  sha256 "724b538463d20f6e26ab4e085205857e8880fa872818e2294da918b7bd1ae6ff"

  url "https://download.twonky.com/#{version.split("-").first}/TwonkyServerInstaller-#{version}.pkg"
  name "Twonky Server"
  desc "DLNA/UPnP media server"
  homepage "https://twonky.com/"

  livecheck do
    url "https://twonky.com/downloads/"
    regex(%r{href=.*?/TwonkyServerInstaller[._-]v?(\d+(?:\.\d+)+(?:-\d+)?)\.pkg}i)
  end

  depends_on :macos

  pkg "TwonkyServerInstaller-#{version}.pkg"

  uninstall launchctl: [
              "com.twonky.server.tsuninstall",
              "com.twonky.server.Twonky",
            ],
            signal:    ["TERM", "com.twonky.server.Twonky"],
            pkgutil:   "com.twonky.server.Twonky",
            delete:    "/Applications/Twonky.app"

  zap trash: "~/Twonky Library.twonky"
end

cask "twonkyserver" do
  version "8.5.2"
  sha256 "e010897ffab5fff125ba1e3b2b249cc62bfcae7613de858061d0b496464883be"

  url "https://download.twonky.com/#{version}/TwonkyServerInstaller-#{version}.pkg"
  name "Twonky Server"
  desc "DLNA/UPnP media server"
  homepage "https://twonky.com/"

  livecheck do
    url "https://twonky.com/downloads/"
    regex(%r{href=.*?/TwonkyServerInstaller[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "TwonkyServerInstaller-#{version}.pkg"

  uninstall launchctl: [
              "com.twonky.server.Twonky",
              "com.twonky.server.tsuninstall",
            ],
            signal:    ["TERM", "com.twonky.server.Twonky"],
            pkgutil:   "com.twonky.server.Twonky",
            delete:    "/Applications/Twonky.app"

  zap trash: "~/Twonky Library.twonky"
end

cask "twonkyserver" do
  version "8.5.2"
  sha256 "6cf6cdc36069342211bdcb75a160045c494bd8825a3d73dc0e0520f720e28ed5"

  url "https://download.twonky.com/#{version}/TwonkyServerInstaller-#{version}.pkg"
  name "Twonky Server"
  homepage "https://twonky.com/"

  livecheck do
    url "https://twonky.com/downloads/index.html"
    strategy :page_match
    regex(%r{href=.*?/TwonkyServerInstaller-(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "TwonkyServerInstaller-#{version}.pkg"

  uninstall pkgutil:   "com.twonky.server.Twonky",
            launchctl: [
              "com.twonky.server.Twonky",
              "com.twonky.server.tsuninstall",
            ],
            signal:    ["TERM", "com.twonky.server.Twonky"],
            delete:    "/Applications/Twonky.app"

  zap trash: "~/Twonky Library.twonky"
end

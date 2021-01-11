cask "twonkyserver" do
  version "8.5.1"
  sha256 "19694b1d7cad69eb14921a6ce234edd71e1d1f4edd671193330b61e042f1d66c"

  url "http://download.twonky.com/#{version}/TwonkyServerInstaller-#{version}.pkg"
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

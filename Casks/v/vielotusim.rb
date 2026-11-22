cask "vielotusim" do
  version "2.0.8"
  sha256 "0d978e500362cb4541ef14c57582d142a97ff971f88a1f4b5077ed096a428f8d"

  url "https://github.com/stevedat/VieLotus-IM/releases/download/v#{version}/VieLotusIM.pkg"
  name "VieLotusIM"
  name "Sen Việt"
  desc "Native Vietnamese input method"
  homepage "https://github.com/stevedat/VieLotus-IM"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  pkg "VieLotusIM.pkg"

  uninstall quit:    "org.vielotus.inputmethod.VieLotusIM",
            pkgutil: "org.vielotus.inputmethod.VieLotusIM.pkg"

  zap trash: [
    "~/Library/Application Support/VieLotusIM",
    "~/Library/Caches/org.vielotus.inputmethod.VieLotusIM",
    "~/Library/HTTPStorages/org.vielotus.inputmethod.VieLotusIM",
    "~/Library/Preferences/org.vielotus.inputmethod.VieLotusIM.plist",
  ]
end

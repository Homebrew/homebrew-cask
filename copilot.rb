cask "copilot" do
  version "152.0.4191.58,c132468f-79b5-4af7-bb52-65309f6b3cc5"
  sha256 "0a6223466b2b765e90bd700a86ccb106c75c7fbe6fd575e6c879ff8408d8648e"

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/Copilot-#{version.csv.first}.pkg"
  name "Copilot"
  desc "AI assistant"
  homepage "https://copilot.microsoft.com/"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=2325114"
    regex(%r{/([^/]+)/Copilot[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  pkg "Copilot-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.microsoft.m365copilot"

  zap trash: [
    "~/Library/Caches/copilot",
    "~/Library/Preferences/com.microsoft.m365copilot.plist",
    "~/Library/WebKit/com.microsoft.m365copilot",
  ]
end

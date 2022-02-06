cask "trex" do
    version "v1.4.3"
    sha256 "e18a030af4b1037022736c12045a6eff8aa13b65201c9ef98d0a7f36d050dc36"

    url "https://github.com/amebalabs/TRex/releases/download/#{version}/TRex.zip",
        verified: "github.com/amebalabs/TRex/releases/"
    name "TRex"
    desc "Easy to use text extraction tool for macOS"
    homepage "https://trex.ameba.co/"
  
    livecheck do
      url :url
      strategy :github_latest
    end
  
    depends_on macos: ">= :big_sur"
    
  
    app "TRex.app"

    zap trash: [
      "~/Library/Application Scripts/com.ameba.TRex-LaunchAtLoginHelper",
      "~/Library/Caches/com.ameba.TRex",
      "~/Library/Containers/com.ameba.TRex-LaunchAtLoginHelper",
      "~/Library/Preferences/com.ameba.TRex.plist",
    ]
end

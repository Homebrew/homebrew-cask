cask "unity" do
  arch arm: "Arm64"

  version "2023.2.17f1,396a1c6fe404"
  sha256 arm:   "c3576eeb5eeeb000d158b4c94b4b83cf2983efefe428f264746c544c3200c1dd",
         intel: "0c9ad5caae071bc56571cee3874a0939e4a734deb7e9f521575462b0a36558fa"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorInstaller#{arch}/Unity-#{version.csv.first}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity Editor"
  desc "Platform for 3D content"
  homepage "https://unity.com/"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    regex(%r{/download_unity/(\h+)/MacEditorInstaller/Unity-(\d+(?:\.\d+)+[a-z]*\d*)\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on cask: "unity-hub"

  pkg "Unity-#{version.csv.first}.pkg"

  uninstall quit:    "com.unity3d.UnityEditor5.x",
            pkgutil: "com.unity3d.UnityEditor5.x",
            delete:  "/Applications/Unity"

  zap delete: "/Library/Application Support/Unity",
      trash:  [
        "/Library/Application Support/Unity",
        "~/Library/Application Support/Unity",
        "~/Library/Application Support/UnityHub",
        "~/Library/Caches/com.unity3d.UnityEditor",
        "~/Library/Logs/Unity",
        "~/Library/Preferences/com.unity3d.unityhub.plist",
        "~/Library/Saved Application State/com.unity3d.unityhub.savedState",
        "~/Library/Unity",
      ]
end

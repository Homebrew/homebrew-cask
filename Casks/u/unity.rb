cask "unity" do
  arch arm: "Arm64"

  version "6000.0.0b15,8008bc0c1b74"
  sha256 arm:   "234333ac0be1ab1c6d46ffebb4bed8fdfbd76f61ef075cf3b06951b58722139a",
         intel: "c867687c3aa2695ac2ddaaba4cf89a0161c48a26a626fd2edaba0d63fd18ed87"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorInstaller#{arch}/Unity-#{version.csv.first}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity Editor"
  desc "Platform for 3D content"
  homepage "https://unity.com/"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    regex(%r{/download(?:_unity)?/([a-f0-9]+)/MacEditorInstaller/Unity-(\d+.\d+.\d+[a-z]*\d*).pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on cask: "unity-hub"

  pkg "Unity-#{version.csv.first}.pkg"

  uninstall quit:    "com.unity3d.UnityEditor5.x",
            pkgutil: "com.unity3d.UnityEditor5.x",
            delete:  "/Applications/Unity"

  zap trash: [
    "/Library/Application Support/Unity",
    "~/Library/Application Support/Unity*",
    "~/Library/Caches/com.unity3d.UnityEditor",
    "~/Library/Logs/Unity",
    "~/Library/Preferences/com.unity3d.unityhub.plist",
    "~/Library/Saved Application State/com.unity3d.unityhub.savedState",
    "~/Library/Unity",
  ]
end

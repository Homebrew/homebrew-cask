cask "unity" do
  arch arm: "Arm64"

  version "6000.0.0f1,4ff56b3ea44c"
  sha256 arm:   "c0e1e40ce3abd738f234529cfc2eb9405c17097a347271ddbe9ec5c21a125388",
         intel: "294cfb044b762f8720df0a0c6f0364c6fdb66bf1d4402478cb776e88be8f3cde"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorInstaller#{arch}/Unity-#{version.csv.first}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity Editor"
  desc "Platform for 3D content"
  homepage "https://unity.com/"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    regex(%r{/(\h+)/MacEditorInstaller/Unity[._-]v?(\d+(?:\.\d+)+[a-z]*\d*)\.pkg}i)
    strategy :json do |json, regex|
      json["official"]&.map do |release|
        match = release["downloadUrl"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
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

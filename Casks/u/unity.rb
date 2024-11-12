cask "unity" do
  arch arm: "Arm64"

  version "2023.2.20f1,0e25a174756c"
  sha256 arm:   "432b014d7bf50f82cb2a0978571df5f1f515c59a2f6826761cb20c32d196763f",
         intel: "c7e203a316b308acab23a81bba16c17be94c65fa210a4c0e5f083d83f2c10b3f"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorInstaller#{arch}/Unity-#{version.csv.first}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity Editor"
  desc "Platform for 3D content"
  homepage "https://unity.com/"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    regex(%r{/(\h+)/MacEditorInstaller/Unity[._-]v?(\d+(?:\.\d+)+(?:f\d+)?)\.pkg}i)
    strategy :json do |json, regex|
      json["official"]&.map do |release|
        # Only use 202X.X.XfX versions until Unity 6 (6000) is a full release
        next unless release["version"]&.start_with?("202")

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

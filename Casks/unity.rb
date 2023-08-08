cask "unity" do
  arch arm: "Arm64"

  version "2023.1.7f1,4f4e359ec3fc"
  sha256 arm:   "897c9ebf0adcbed0fea578a37fa79a5cc4f8d17619ac4a495cf6d554a94fd38f",
         intel: "da2887d8cbbc9b3f84343a48d1ab248ee9d12b407189dfc94ab70367155698a1"

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

  zap trash:  [
        "/Library/Application Support/Unity",
        "~/Library/Application Support/Unity",
        "~/Library/Application Support/UnityHub",
        "~/Library/Caches/com.unity3d.UnityEditor",
        "~/Library/Logs/Unity",
        "~/Library/Preferences/com.unity3d.unityhub.plist",
        "~/Library/Saved Application State/com.unity3d.unityhub.savedState",
        "~/Library/Unity",
      ],
      delete: "/Library/Application Support/Unity"
end

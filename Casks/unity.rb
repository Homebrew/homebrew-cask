cask "unity" do
  arch arm: "Arm64"

  version "2022.2.17f1,54cb9bda89c4"
  sha256 arm:   "309f628f31fc2f603ae48e466922e4e859b466a8624fb946f04e4b0660d9c7a8",
         intel: "7280a3ff7b383dc2f3469033db87ba048a67aa704d283f17db2f871f583aa507"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorInstaller#{arch}/Unity-#{version.csv.first}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity Editor"
  desc "Platform for 3D content"
  homepage "https://unity.com/"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    strategy :page_match do |page|
      page.scan(%r{/download_unity/(\h+)/MacEditorInstaller/Unity-(\d+(?:\.\d+)+[a-z]*\d*)\.pkg}i).map do |match|
        "#{match[1]},#{match[0]}"
      end
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

cask "unity" do
  arch arm: "Arm64"

  version "2023.2.18f1,1cb755715f58"
  sha256 arm:   "bf0ef992547263bcd2ca521e11214ff65fa9acdb2f1a41ca460341e450f737e0",
         intel: "770ae7cdb0e3859a08a7b6be168fa8c66cd118595e405c021cdb74715eb837cd"

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

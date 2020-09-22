cask "unity" do
  version "2020.1.6f1,fc477ca6df10"
  sha256 "df7d34d6afc28f343f3ab6c9c7fae2c0112c90c00062215d79cfc815e67efd1f"

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity-#{version.before_comma}.pkg"
  appcast "https://unity3d.com/get-unity/download/archive"
  name "Unity Editor"
  homepage "https://unity3d.com/unity/"

  pkg "Unity-#{version.before_comma}.pkg"

  uninstall quit:    "com.unity3d.UnityEditor5.x",
            pkgutil: "com.unity3d.UnityEditor5.x",
            delete:  "/Applications/Unity"
end

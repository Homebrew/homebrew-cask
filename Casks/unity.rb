cask "unity" do
  version "2020.1.1f1,2285c3239188"
  sha256 "6c7180c33d18a1ec3db76760954feafa96e336993aacf312557eab30ec45c362"

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity-#{version.before_comma}.pkg"
  appcast "https://unity3d.com/get-unity/download/archive"
  name "Unity Editor"
  homepage "https://unity3d.com/unity/"

  pkg "Unity-#{version.before_comma}.pkg"

  uninstall quit:    "com.unity3d.UnityEditor5.x",
            pkgutil: "com.unity3d.UnityEditor5.x",
            delete:  "/Applications/Unity"
end

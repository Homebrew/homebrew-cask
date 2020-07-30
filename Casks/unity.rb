cask "unity" do
  version "2019.4.6f1,a7aea80e3716"
  sha256 "84bd731464cac8fee32474f8627dc7be5b73f68f3f537ce746da5000da332295"

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity-#{version.before_comma}.pkg"
  appcast "https://unity3d.com/get-unity/download/archive"
  name "Unity Editor"
  homepage "https://unity3d.com/unity/"

  pkg "Unity-#{version.before_comma}.pkg"

  uninstall quit:    "com.unity3d.UnityEditor5.x",
            pkgutil: "com.unity3d.UnityEditor5.x",
            delete:  "/Applications/Unity"
end

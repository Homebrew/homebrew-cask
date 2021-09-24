cask "unity-linux-support-for-editor" do
  version "2021.1.22f1,a137e5fb0427"
  sha256 "0ac52cc7a560742652c651a20c6302a258ba7c94a4437b943302d8b5e8ed308a"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Mono-Support-for-Editor-#{version.before_comma}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity Linux (Mono) Build Support"
  desc "Linux (Mono) target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
    strategy :page_match do |page|
      page.scan(%r{
        /download_unity/(\h+)/MacEditorTargetInstaller
        /UnitySetup-Linux-Mono-Support-for-Editor-(\d+(?:\.\d+)*[a-z]*\d*)\.pkg
      }ix).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  depends_on cask: "unity"

  pkg "UnitySetup-Linux-Mono-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.LinuxStandaloneSupport"
end

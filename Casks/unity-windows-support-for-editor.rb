cask 'unity-windows-support-for-editor' do
  version '2018.1.4f1,1a308f4ebef1'
  sha256 'ba8f386ff5ed95210ad03b9c505514d5881c2def45f89ae0e1085c3eab9b521c'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Mono-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/update'
  name 'Unity Windows (Mono) Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Windows-Mono-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end

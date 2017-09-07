cask 'unity-windows-support-for-editor' do
  version '2017.1.0f3,472613c02cf7'
  sha256 'cb403ba4c64b5faf9ef74982b35c8bfa299abbdc24075ddcfc9fbfe3eb13ceb5'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Windows Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end

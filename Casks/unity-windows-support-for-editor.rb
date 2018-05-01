cask 'unity-windows-support-for-editor' do
  version '2017.4.1f1,9231f953d9d3'
  sha256 'a10027e471187eda4e51b097f8531702edbd77ba1620d683fef5b544fd2ec786'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Windows Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end

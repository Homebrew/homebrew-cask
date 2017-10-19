cask 'unity-windows-support-for-editor' do
  version '2017.2.0f3,46dda1414e51'
  sha256 '760dcdba04a5ddfdf5d2446d64f197b6243644f1b656b6c5ac5896a9212ba08f'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Windows Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end

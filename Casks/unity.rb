cask 'unity' do
  version '5.4.2f1,94e3a60ee258'
  sha256 '02b7900d2f81be23bb3fbe60eeffef5573787ebe9a6695dc81435187f2a328df'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x'
end

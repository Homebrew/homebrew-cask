cask 'timemachineeditor' do
  version :latest
  sha256 :no_check

  url 'https://tclementdev.com/timemachineeditor/TimeMachineEditor.pkg'
  name 'TimeMachineEditor'
  homepage 'https://tclementdev.com/timemachineeditor/'

  pkg 'TimeMachineEditor.pkg'

  uninstall pkgutil: 'com.tclementdev.pkg.timemachineeditor'
end

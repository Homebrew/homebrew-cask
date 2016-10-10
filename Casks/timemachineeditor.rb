cask 'timemachineeditor' do
  version :latest
  sha256 :no_check

  url 'http://timesoftware.free.fr/timemachineeditor/TimeMachineEditor.pkg'
  name 'TimeMachineEditor'
  homepage 'http://timesoftware.free.fr/timemachineeditor/'

  pkg 'TimeMachineEditor.pkg'

  uninstall pkgutil: 'com.tclementdev.pkg.timemachineeditor'
end

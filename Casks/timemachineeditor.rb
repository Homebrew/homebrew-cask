cask :v1 => 'timemachineeditor' do
  version :latest
  sha256 :no_check

  url 'http://timesoftware.free.fr/timemachineeditor/TimeMachineEditor.zip'
  name 'TimeMachineEditor'
  homepage 'http://timesoftware.free.fr/timemachineeditor/'
  license :gratis

  app 'TimeMachineEditor.app'
end

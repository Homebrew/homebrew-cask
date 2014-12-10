cask :v1 => 'timemachineeditor' do
  version :latest
  sha256 :no_check

  url 'http://timesoftware.free.fr/timemachineeditor/TimeMachineEditor.zip'
  homepage 'http://timesoftware.free.fr/timemachineeditor/'
  license :unknown    # todo: improve this machine-generated value

  app 'TimeMachineEditor.app'
end

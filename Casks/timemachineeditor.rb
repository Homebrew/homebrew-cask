cask :v1 => 'timemachineeditor' do
  version :latest
  sha256 :no_check

  url 'http://timesoftware.free.fr/timemachineeditor/TimeMachineEditor.zip'
  name 'TimeMachineEditor'
  homepage 'http://timesoftware.free.fr/timemachineeditor/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TimeMachineEditor.app'
end

cask :v1 => 'firetask' do
  version :latest
  sha256 :no_check

  url 'http://downloads.firetask.com/firetask-mac/Firetask-Mac.dmg'
  name 'FireTask'
  homepage 'http://firetask.com'
  license :closed    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Firetask.app'
end

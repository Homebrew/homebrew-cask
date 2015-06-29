cask :v1 => 'tuneup' do
  version :latest
  sha256 :no_check

  url 'https://www.tuneupmedia.com/redirect/mac-download'
  name 'TuneUp'
  homepage 'https://www.tuneupmedia.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  # todo: installer :manual should have a matching uninstall
  installer :manual => 'TuneUp-Installer.app'
end

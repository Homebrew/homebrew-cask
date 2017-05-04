class Voila < Cask
  url 'http://www.globaldelight.com/voila/downloads/voila.dmg'
  version 'latest'
  sha256 :no_check

  homepage 'http://www.globaldelight.com/voila/'

  appname = "Voila.app"

  caveats do
    puts <<-EOS.undent
      #{title} unfortunately refuses to run via a symlink. So it will instead
      be copied into #{Cask.appdir}/#{title}.app. You can change this
      location using:
        brew cask install --appdir=<Applications dir> #{title}

    EOS
    assistive_devices
  end

  after_install do
    system '/bin/cp', '-a', '--', "#{destination_path}/#{appname}", Cask.appdir
    puts <<-EOS.undent
      If you've specified an alternate appdir, to uninstall properly you
      must specify it again, like:
        brew cask uninstall --appdir=#{Cask.appdir} #{title}
    EOS
  end

  uninstall :quit => [
    'com.globaldelight.Dropboxuploader',
    'com.globaldelight.EvernoteUploader',
    'com.globaldelight.FTPUploader',
    'com.globaldelight.FlickrUploader',
    'com.globaldelight.TumblrUploader',
    'com.globaldelight.Voila',
    'com.globaldelight.Voila.GoogleDriveUploader',
    'com.globaldelight.VoilaCapture',
    'com.globaldelight.YouTubeUploader',
    'com.globaldelight.objectiveflickr',
    'com.globaldelight.qlgenerator.Voila',
  ], :files => "#{Cask.appdir}/#{appname}"

end

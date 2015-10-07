cask :v1 => 'wallpaper-wizard' do
  version '1.5.1'
  sha256 '5f6d190cff7af60050357d993ee34b9544fe15672b535769766ab783cbd09f99'

  # coppertino.com is the official download host per the vendor homepage
  url "http://cloud.coppertino.com/wallwiz/wallpaperwizard_#{version}.dmg"
  name 'Wallpaper Wizard'
  appcast 'http://update.coppertino.com/wpw/appcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  homepage 'http://wallwiz.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Wallpaper Wizard.app'
end

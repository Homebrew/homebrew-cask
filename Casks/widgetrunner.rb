cask 'widgetrunner' do
  version '1.0.3'
  sha256 'dba26a4e3dfd03c0f7718eaab678c781d66d04b36a4cb69b07adb15275fbdcc5'

  url "http://db.csail.mit.edu/madden/WidgetRunner/widgetrunner#{version.no_dots}.zip"
  name 'WidgetRunner'
  homepage 'http://db.csail.mit.edu/madden/WidgetRunner/'

  app 'WidgetRunner.app'
end

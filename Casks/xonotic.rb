cask 'xonotic' do
  version '0.8.2'
  sha256 'a22f7230f486c5825b55cfdadd73399c9b0fae98c9e081dd8ac76eca08359ad5'

  url "https://dl.xonotic.org/xonotic-#{version}.zip"
  name 'Xonotic'
  homepage 'https://www.xonotic.org/'

  app 'Xonotic/Xonotic.app'

  postflight do
    system_command '/bin/cp', args: ['-r', File.join(staged_path, 'Xonotic/data'), '/Applications/Xonotic.app/Contents/Resources/']
  end
end

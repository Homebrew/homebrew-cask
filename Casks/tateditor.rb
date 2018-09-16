cask 'tateditor' do
  version :latest
  sha256 :no_check

  # drive.google.com/file/d/0B5RO0CVwwupjVTN0SzRjUGRxcVE was verified as official when first introduced to the cask
  url 'https://drive.google.com/file/d/0B5RO0CVwwupjVTN0SzRjUGRxcVE/view?usp=drive_web'
  name 'TATEditor'
  homepage 'http://www.cc4966.net/'

  app 'tateditor.app'
end

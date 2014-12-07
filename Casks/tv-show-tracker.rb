cask :v1 => 'tv-show-tracker' do
  version '1.3.3'
  sha256 '7e489d50083acc217a7587d800d3f708f0ba586397656cce529e8f40a8a612f9'

  url "http://www.pixelperfectwidgets.com/tvshowtracker/download/tvshowtracker_#{version}.zip"
  homepage 'http://www.pixelperfectwidgets.com/'
  license :oss

  widget 'TV Show Tracker.wdgt'

  # todo: transitional, replace #{self.name...} with #{token}
  caveats <<-EOS.undent
    Currently, Dashboard Widgets such as '#{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase}' do NOT work correctly
    when installed via brew-cask.  The bug is being tracked here:

      https://github.com/caskroom/homebrew-cask/issues/2206

    It is recommended that you do not install this Cask unless you are
    a developer working on the problem.
  EOS
end

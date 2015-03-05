#!/usr/bin/env ruby
#
# Generously contributed by Markus Doits
# https://github.com/doits
# (c) 2014 MIT license
#

require 'rubygems'

class Hbc
  def installed_version?
    !installed_version.nil?
  end

  def installed_version
    # returns latest installed version if possible
    Pathname.glob(caskroom_path.join('*')).map(&:basename).sort{|x,y|
      Gem::Version.new(x) <=> Gem::Version.new(y) # throws exception if invalid version is provided ...
    }.last rescue nil # ... return nil in this case
  end

  def update_available?
    Gem::Version.correct?(version) && # we have something to compare against in Cask file ...
      installed_version? && # ... we can determine current installed version ...
      Gem::Version.new(installed_version) < Gem::Version.new(version) # ... compare
  end
end

module Hbc::Scopes
  module ClassMethods
    def upgradable
      Hbc.installed.select(&:update_available?)
    end
  end
end

upgradable_casks = Hbc.upgradable

puts upgradable_casks.length == 0 && 'No outdated packages' || upgradable_casks

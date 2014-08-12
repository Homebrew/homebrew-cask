class Cask::Container::Sit < Cask::Container::GenericUnar
  def self.me?(criteria)
    criteria.file.include? 'application/x-stuffit' and
      ! criteria.lsar.nil? and
        criteria.lsar.split("\n").first.split(':').last.include?('StuffIt') and
          super
  end
end

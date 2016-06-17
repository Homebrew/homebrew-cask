class Hbc::Container::Sit < Hbc::Container::GenericUnar
  def self.me?(criteria)
    criteria.file.include?('application/x-stuffit') &&
      !criteria.lsar.nil? &&
        criteria.lsar.split("\n").first.split(':').last.include?('StuffIt') &&
          super
  end
end

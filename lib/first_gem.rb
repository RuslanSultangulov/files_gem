# frozen_string_literal: true

require_relative "first_gem/version"

module FirstGem
  class Error < StandardError; end
  def self.files
    Dir[ './*' ].select{ |f| File.file? f }.map{ |f| File.basename f }
  end

  def self.files_relative
    Dir[ './*' ].select{ |f| File.file? f }
  end

  def self.files_absolute
    Dir[ './*' ].select{ |f| File.file? f }.map{ |f| File.absolute_path f }
  end
end

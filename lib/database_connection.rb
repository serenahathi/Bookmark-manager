class DatabaseConnection

  @@connection = nil

  def self.setup(database_name)
    @@connection = nil
  end

end
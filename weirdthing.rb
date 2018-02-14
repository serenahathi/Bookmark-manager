class ConnectionSetup
  module EnvSetup
    if ENV['environment'] == 'test'
      DatabaseConnection.setup('bookmark_manager_test')
    else
      DatabaseConnection.setup('bookmark_manager')
    end
  end
end

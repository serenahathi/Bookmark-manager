require 'database_connection'

RSpec.describe DatabaseConnection do

  describe ".setup" do
    it 'sets up a connection to a database through PG' do
      expect(PG).to receive(:connect).with(dbname: 'bookmark_manager_test')
      DatabaseConnection.setup('bookmark_manager_tests')
    end

  end



end
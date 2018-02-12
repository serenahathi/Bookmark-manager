require 'link'

describe Link do
  describe '.all' do
    it 'returns all links' do
      links = Link.all

      expect(links).to include("http://www.makersacademy.com")
      expect(links).to include("http://www.google.com")
      expect(links).to include("http://www.facebook.com")
    end
  end
end 

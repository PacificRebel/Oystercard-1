require 'station'

describe Station do
  subject {described_class.new("Bank")}

  describe '#initialize' do
    it 'has a station name' do
      expect(subject.name).to eq "Bank"
    end


    it 'has a zone' do
      expect(subject.zone).to eq "1"
    end
  end
end

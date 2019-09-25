require 'journey'
describe Journey do
describe '#entry_station' do
  # let(:entry_station){double :}
  it 'shows you the entry station' do
    station = Station.new("Bank")
    expect(subject.entry_station(station)).to eq "Bank"
  end

end

end
require 'bike'


describe Bike do 
  
  it { is_expected.to respond_to :working? }

  it 'can be reported broken' do
    subject.report_broken
    is_expected.to be_broken 
  end


end
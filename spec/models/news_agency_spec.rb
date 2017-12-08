require 'rails_helper'

RSpec.describe NewsAgency, type: :model do
  describe 'Factory' do
    it 'is valid' do
      expect(FactoryGirl.create(:news_agency)).to be_valid
    end
  end

  describe 'Database' do
    it { is_expected.to have_db_column :id}
    it { is_expected.to have_db_column :name}
    it { is_expected.to have_db_column :street_address}
    it { is_expected.to have_db_column :post_code}
    it { is_expected.to have_db_column :city}
  end

  describe '#full_address?' do
    let(:agency) {FactoryGirl.create(:news_agency, street_address: 'Kungsgatan', city: 'Stockholm')}

    it 'responds with sanitized address' do
      expect(agency.full_address).to eq 'Kungsgatan, Stockholm, Sweden'
    end

  end

end

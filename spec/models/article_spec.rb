require 'rails_helper'

RSpec.describe Article, type: :model do

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:article)).to be_valid
    end
  end

  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :content }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :content }
  end

  describe 'Associations' do
    it { is_expected.to have_many :comments}
  end

end

require 'rails_helper'

RSpec.describe Comment, type: :model do

  describe 'Factory' do
    let(:article) { FactoryGirl.create(:article)}
    it 'is valid' do
      expect(FactoryGirl.create(:comment, article: article)).to be_valid
    end
  end

  describe 'Database' do
    it { is_expected.to have_db_column :id}
    it { is_expected.to have_db_column :email}
    it { is_expected.to have_db_column :content}
  end

  describe 'Associations' do
    it { is_expected.to belong_to :article}
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :content}
  end
end

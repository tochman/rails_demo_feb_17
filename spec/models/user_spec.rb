require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Factory' do
    it 'is valid' do
      expect(create(:user)).to be_valid
    end
  end

  describe 'Database' do
    it { is_expected.to have_db_column :id}
    it { is_expected.to have_db_column :name}
    it { is_expected.to have_db_column :email}
    it { is_expected.to have_db_column :encrypted_password}
    it { is_expected.to have_db_column :subscriber}
    it { is_expected.to have_db_column :owner}
    it { is_expected.to have_db_column :publisher}
  end

  describe 'Validations (non Devise attributes)' do
    it { is_expected.to validate_presence_of :name}
  end

  describe '#subscriber?' do
    let(:subscriber) {create(:user, subscriber: true)}
    let(:nonsubscriber) {create(:user, subscriber: false)}

    it 'responds true if user is a subscriber' do
      expect(subscriber.subscriber?).to eq true
    end

    it 'responds false if user is not a subscriber' do
      expect(nonsubscriber.subscriber?).to eq false
    end

  end

  describe '#owner?' do
    let(:owner) {create(:user, owner: true)}
    let(:visitor) {create(:user, owner: false)}

    it 'responds true if user is a owner' do
      expect(owner.owner?).to eq true
    end

    it 'responds false if user is not a owner' do
      expect(visitor.owner?).to eq false
    end

  end

  describe '#publisher?' do
    let(:publisher) {create(:user, publisher: true)}
    let(:subscriber) {create(:user, subscriber: true)}

    it 'responds true if user is a owner' do
      expect(publisher.publisher?).to eq true
    end

    it 'responds false if user is not a owner' do
      expect(subscriber.publisher?).to eq false
    end

  end


end

require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { is_expected.to have_db_column(:body) }
  it { is_expected.to have_db_column(:email) }
  it { is_expected.to have_db_column(:article_id) }

  it { is_expected.to belong_to(:article) }
end

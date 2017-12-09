Given(/^the following comments exists in the system$/) do |table|
  table.hashes.each do |comment|
    article = Article.find_by(title: comment[:article])
    FactoryGirl.create(:comment, comment
                                     .merge!(article: article)
                                     .except(comment['article']))
  end
end
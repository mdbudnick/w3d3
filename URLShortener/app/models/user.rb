class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true


  has_many(
    :visit,
    class_name: "Visit",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many(
    :visited_urls,
    through: :visit,
    source: :url
  )


end

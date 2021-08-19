class User < ApplicationRecord
  validates :username, uniqueness: true

  def self.generate
    adjectives = %w[Ancient Creative Dangerous Effective
                    Flying Gilded]
    nouns = %w[Highway Intern Jackhammer Lion Master]
    number = rand.to_s[2..4]
    username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
    create(username: username)
  end
end

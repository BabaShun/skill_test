class User
  include Neo4j::ActiveNode
  property :name, type: String
  property :email, type: String

  has_many :both, :skill_tags, type: 'skill_tags'
end

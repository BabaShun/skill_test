class SkillTag
  include Neo4j::ActiveNode
  property :name, type: String
  has_many :both, :users, type: 'users'

end

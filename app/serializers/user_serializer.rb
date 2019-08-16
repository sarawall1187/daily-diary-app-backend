class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :password, :entries
  # has_many :entries, serializer: EntrySerializer
end

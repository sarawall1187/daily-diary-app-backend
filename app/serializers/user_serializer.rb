class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :entries
  # has_many :entries, serializer: EntrySerializer
end

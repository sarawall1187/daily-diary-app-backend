class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :password_digest, :entries
  # has_many :entries, serializer: EntrySerializer
end

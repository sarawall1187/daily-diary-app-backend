class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email
  has_one :diary
end

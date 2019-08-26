class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :password, :entries
end

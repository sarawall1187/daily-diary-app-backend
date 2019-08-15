class EntrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :todays_entry, :tomorrows_goal, :food_log, :created_at
  belongs_to :user, serializer: UserSerializer
end

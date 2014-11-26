json.array!(@planning_permissions) do |planning_permission|
  json.extract! planning_permission, :id, :name
  json.url planning_permission_url(planning_permission, format: :json)
end

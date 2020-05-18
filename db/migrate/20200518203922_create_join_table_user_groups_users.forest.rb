# This migration comes from forest (originally 20161225212258)
class CreateJoinTableUserGroupsUsers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :forest_user_groups, :forest_users do |t|
      t.index [:forest_user_group_id, :forest_user_id], name: 'index_frst_user_grps_users_on_frst_user_grp_id_and_frst_user_id'
      t.index [:forest_user_id, :forest_user_group_id], name: 'index_frst_user_grps_users_on_frst_user_id_and_frst_user_grp_id'
    end
  end
end

class CreateSpreeFrontendLogo < ActiveRecord::Migration
  def change

    create_table :spree_frontend_logos do |t|
      t.attachment :attachment_light
      t.attachment :attachment_dark
    end
  end
end

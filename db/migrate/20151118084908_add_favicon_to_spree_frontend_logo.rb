class AddFaviconToSpreeFrontendLogo < ActiveRecord::Migration

  def change
    add_attachment :spree_frontend_logos, :favicon
  end
end

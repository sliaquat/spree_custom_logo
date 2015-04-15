Deface::Override.new(virtual_path: "spree/admin/shared/sub_menu/_configuration",
                     name: "logo_settings_added_to_configuration_menu",
                     insert_bottom: "[data-hook='admin_configurations_sidebar_menu']",
                     partial: "spree/admin/shared/logo_settings"
)

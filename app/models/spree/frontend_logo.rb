
class Spree::FrontendLogo < ActiveRecord::Base


  has_attached_file :attachment_dark,
                    styles: { mini: '48x48>', small: '125x100>', logo: '250x200>', medium: '240x240>', large: '600x600>' },
                    default_style: :logo,
                    url: '/spree/logo_dark/:id/:style/:basename.:extension',
                    path: ':rails_root/public/spree/logo_dark/:id/:style/:basename.:extension',
                    convert_options: { all: '-strip -auto-orient -colorspace sRGB' }

  has_attached_file :attachment_light,
                    styles: { mini: '48x48>', small: '125x100>', logo: '250x200>', medium: '240x240>', large: '600x600>' },
                    default_style: :logo,
                    url: '/spree/logo_light/:id/:style/:basename.:extension',
                    path: ':rails_root/public/spree/logo_light/:id/:style/:basename.:extension',
                    convert_options: { all: '-strip -auto-orient -colorspace sRGB' }

  has_attached_file :favicon,
                    styles: { small: '16x16>', favicon: '32x32>'},
                    default_style: :favicon,
                    url: '/spree/favicon/:id/:style/:basename.:extension',
                    path: ':rails_root/public/spree/favicon/:id/:style/:basename.:extension',
                    convert_options: { all: '-strip -auto-orient -colorspace sRGB' }

  validates_attachment :attachment_dark,
                       :presence => true,
                       :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }

  validates_attachment :attachment_light,
                       :presence => true,
                       :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }

end

module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "| BearCanyon |"
    @seo_keywords = "Bear Canyon Construction"
  end
end
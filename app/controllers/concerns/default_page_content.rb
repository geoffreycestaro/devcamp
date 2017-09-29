module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "G. Cestaro Portfolio"
    @seo_keywords = "Geoffrey Cestaro portfolio ruby on rails"
  end

end
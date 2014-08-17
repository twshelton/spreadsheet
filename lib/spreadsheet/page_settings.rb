module Spreadsheet
  ##
  # 4.4 Page Settings Block
  # 
  module PageSettings
    attr_writer :fit_to_pages_wide, :fit_to_pages_tall, :page_orientation
    attr_accessor :custom_header
    def fit_printout
      #5.97 SHEETPR
      #if either of the fit attributes are specified then make sure to set the ws_bool variable to fit the print
      (@fit_to_pages_wide || @fit_to_pages_tall).nil? ? 0 : 1
    end
    def has_custom_header?
      # 5.5 HEADER
      @custom_header.nil? ? false : true
    end
    def fit_to_pages_wide
      # 5.73 PAGESETUP
      (@fit_to_pages_wide || 0)
    end
    def fit_to_pages_tall
      # 5.73 PAGESETUP
      (@fit_to_pages_tall || 0)
    end
    def page_orientation
      # 5.73 PAGESETUP
      @page_orientation == "landscape" ? 0 : 0x0002
    end
  end
end

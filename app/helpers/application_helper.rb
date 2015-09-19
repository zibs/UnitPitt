module ApplicationHelper
	
  def active_class(link_path)
  		current_page?(link_path) ? "active-section" : ""
  end



 	
 	 # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "2055 Project"
    if page_title.empty?
      base_title
    else
      "#{page_title}"
    end
  end

# CLASS AND DATA HELPERS
  def html_class(html_class='')
  	if html_class.empty?
  		html_class
  	else
  		"#{html_class}"
  	end
  end

  def container_class(container_class='')
    if container_class.empty?
      container_class
    else
      "#{container_class}"
    end
  end

  def styles(styles= '')
    if styles.empty?
      styles
    else
      "#{styles}"

    end
  end

  def body_data(data='')
    if data.empty?
      data
    else
      "#{data}"
    end 
  end



end

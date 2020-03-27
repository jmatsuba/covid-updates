class Resource < ApplicationRecord

  belongs_to :category, optional: true
  belongs_to :user, optional: true
  has_rich_text :rich_description

  scope :by_date, -> { order(date: :desc) }

  filterrific(
    default_filter_params: { sorted_by: 'created_at_desc' },
    available_filters: [ :sorted_by, :search_query, :with_category_id, :with_resources_since ]
  )

  scope :search_query, ->(query) {
    return nil  if query.blank?

    # condition query, parse into individual keywords
    terms = query.downcase.split(/\s+/)
  
    # replace "*" with "%" for wildcard searches,
    # append '%', remove duplicate '%'s
    terms = terms.map { |e|
      (e.tr("*", "%") + "%").gsub(/%+/, "%")
    }
    # configure number of OR conditions for provision
    # of interpolation arguments. Adjust this if you
    # change the number of OR conditions.
    num_or_conds = 2

    where(
      terms.map { |_term|
        # feel free to append more LIKE queries, but remember to increase num_or_conds as well
        "(LOWER(resources.name) LIKE ? OR LOWER(resources.kind) LIKE ?)"
        }.join(" AND "),
        *terms.map { |e| [e] * num_or_conds }.flatten,
      )
    }  

  scope :sorted_by, ->(sort_option) {

    # simple regex match to extract sort direction 
    direction = /desc$/.match?(sort_option) ? "desc" : "asc"

    case sort_option.to_s

    when /^created_at_/
      order("resources.created_at #{direction}")
    when /^name_/
      # Simple sort on the name columns
      order("LOWER(resources.name) #{direction}")
    when /^category_id_/
      # grab and sort all resources with a category
      order("LOWER(categories.name) #{direction}").includes(:category).references(:category)
    else
      raise(ArgumentError, "Invalid sort option: #{sort_option.inspect}")
    end
  }

  scope :with_category_id, ->(category_id) {
    where("categories.id = ?", category_id).joins(:category)
  }

  scope :with_resources_since, ->(reference_date) {
    where("resources.created_at >= ?", reference_date)
  }

  def self.options_for_sorted_by
    [
      ["Name (a-z)", "name_asc"],
      ["Date (newest first)", "created_at_desc"],
      ["Date (oldest first)", "created_at_asc"],
      ["Category (a-z)", "category_id_asc"],
    ]
  end

  paginates_per 50

end

module Admin::ProductDecoratePrice
  extend ActiveSupport::Concern

  included do
    rails_admin do
      field :product_decorate do
        inline_add false
        inline_edit false
      end

      field :supplier do
        inline_add false
        inline_edit false
      end

      field :plant do
        inline_add false
        inline_edit false
      end

      field :city do
        inline_add false
        inline_edit false
      end

      field :contractor do
        inline_add false
        inline_edit false
      end

      field :__value
      field :content

      field :created_at do
        sort_reverse true
      end

      list do
        sort_by :created_at
      end

      edit do
        field :created_at do
          hide
        end
      end
    end
  end

  def __value
    self.value
  end

  def __value=(value)
    self.value = value
  end

end

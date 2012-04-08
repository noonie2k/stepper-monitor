module SimpleForm
  module Inputs
    class DatePickerInput < Base
      def input
        @builder.text_field(attribute_name, class: 'date_picker' )
      end
    end
  end
end

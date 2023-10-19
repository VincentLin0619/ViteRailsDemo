module FormHelper
  def errors_for(form, field, opt)
    error_title = form.object.errors[field].try(:first)
    error_msg = "#{opt}#{error_title}"
    content_tag :p, error_msg, class: "error text-center text-gray-500 text-xs text-red-500"
  end
  def form_group_for(form, field, opts={}, &block)
    label = opts.fetch(:label){ true }
    content_tag :div, class: "form-group #{'has-error' if form.object.errors[field].present?}" do
      concat form.label(field, class: "control-label block text-gray-700 text-sm font-bold mb-2") if label
      concat capture(&block)
      concat errors_for(form, field, label) if form.object.errors[field].present?
    end
  end
end

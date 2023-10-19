module FormHelper
  def errors_for(form, field, opt)
    error_title = form.object.errors[field].try(:first)
    error_msg = "#{opt}#{error_title}"
    content_tag :span, error_msg, class: "error"
  end
  def form_group_for(form, field, opts={}, &block)
    label = opts.fetch(:label){ true }
    content_tag :div, class: "form-group #{'has-error' if form.object.errors[field].present?}" do
      concat form.label(field, class: "control-label") if label
      concat capture(&block)
      concat errors_for(form, field, label) if form.object.errors[field].present?
    end
  end
end

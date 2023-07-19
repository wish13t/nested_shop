module ApplicationHelper

  # def link_to_add_fields(name, f, association)
  #   #creates a new object from association which is :product_variants
  #   new_object = f.object.send(association).klass.new
  #   #just creates or takes the id from the newly created object
  #   id = new_object.object_id
  #   #creates the field form
  #   fields = f.fields_for(association, new_object, child_index: id) do |builder|
  #     render(association.to_s.singularize + "_fields", f: builder)
  #   end
  #   #pass down the link to the fields form
  #   link_to(name, '#', class: 'add_fields', data: [id: id, fields: fields.gsub("\n")])
  # end


  # def link_to_add_fields(name, form, association, **options)
  #   new_object = form.object.send(association).klass.new
  #   id = new_object.object_id
  #   fields = form.fields_for(association, new_object, child_index: id) do |builder|
  #     render(association.to_s.singularize + "_fields", f: builder)
  #   end
  #   link_to(name, '#', class: 'add_fields', data: { id: id, fields: fields.gsub("\n", "") }, **options)
  # end

  def link_to_add_fields(name, form, association, **options)
    new_object = form.object.send(association).klass.new
    id = new_object.object_id
    fields = form.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: 'add_fields', data: { id: id, fields: fields.gsub("\n", "") }, **options)
  end
end

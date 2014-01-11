module TasksHelper
		def task_title_links(task)
		content_tag :h1 do 
			[task.title,
				link_to_icon('show', task),
				link_to_icon('edit',edit_task_path(task)),
				link_to_icon('destroy', task, {
					:confirm => 'Are you sure?',
					:method => :delete
					})
				].join('').html_safe
		end
	end
end

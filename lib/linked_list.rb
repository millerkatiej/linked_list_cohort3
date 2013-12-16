class LinkedList
	# attr_accessor:new_item

	def initialize
		@head = nil
	end

	def add_item(item)

		if @head.nil?
			@head = LinkedListItem.new(item)
		else 
			current_item = @head
			while current_item.next_list_item != nil
				current_item = current_item.next_list_item
			end
			current_item.next_list_item = LinkedListItem.new(item)
		end

	end

	def get(index)
	if index < 0
		raise IndexError, "Index cannot be negative"
	end
		item = @head
		if @head
			index.times do
				if item == nil
					raise IndexError, "No item"
				else
					item = item.next_list_item
				end			
			end
			item.payload
		else
			raise IndexError, "No items in list"
		end	
	end

	def size
		if @head
			current_item = @head
			size = 0
			while current_item != nil
				current_item = current_item.next_list_item
				size = size += 1
			end
			return size
		else 0
		end
	end

	def last
		if @head
			current_item = @head
			while current_item.next_list_item != nil
				current_item = current_item.next_list_item
			end
			current_item.payload
		else nil
		end
	end

	def to_s
		if @head
		current_item = @head
		string = @head.payload.to_s
		while current_item.next_list_item != nil
			current_item = current_item.next_list_item
			string << ", " + current_item.payload.to_s

		end
		"| #{string} |"
		else "| |"
		end
	end
end

def caesar_cipher(message, key=1)
	encrypt_message = message.chars.map do |c|
		case c
		when 'a'..'z' then ((((c.ord - 97 + key) % 26) + 97).chr)
		when 'A'..'Z' then ((((c.ord - 65 + key) % 26) + 65).chr)
		else
			c
		end
	end
	encrypt_message.join
end


puts caesar_cipher("What a string!", 5)